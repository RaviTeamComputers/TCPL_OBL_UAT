codeunit 50104 "Management Sales Report (MIS)"
{
    trigger OnRun()
    var
        Achec: Codeunit 50048;
    begin
        Achec.SendToAll();
        //SendMGTMISReport();
    end;

    var
        myInt: Integer;

    procedure SendMGTMISReport()
    var
        EmailObj: Codeunit Email;
        GLSetup: Record "General Ledger Setup";
        EmailMsg: codeunit "Email Message";
        EmailCCList: List of [Text];
        BodyText: Text;
        EmailBccList: List of [Text];
        EmailAddressList: List of [Text];
        TempBlob: Codeunit "Temp Blob";
        SOutsrm: OutStream;
        SInstrm: InStream;
        TInstrm3: InStream;
        Docno6: Code[20];
        Docno7: Code[20];
        FileName: Text;
        ManagementSalesReport: Report 50350;
        SubJect: Text;
        SalesJournalData: Query 50042;
        AsonDate: Date;
        DebtorsCollectionMGT: Query 50029;
        DebtorBalAmt: Decimal;
        SalesASOnDate: Decimal;
        SAlesForMonth: Decimal;
        Collection: Decimal;
        SalesReturnJournalData: Query 50048;

    begin
        GLSetup.Get();
        AsonDate := TODAY - 1;

        FileName := 'MGTMIS_' + FORMAT(AsonDate);
        FileName := CONVERTSTR(FileName, '/', '_');
        // 15800  ManagementSalesReport.SAVEASEXCEL('C:\StateWiseReport\' + FileName + '.xlsx');
        Clear(TempBlob);
        Clear(SInstrm);
        Clear(SOutsrm);
        Clear(GLSetup."50350 Report");
        TempBlob.CreateInStream(SInstrm);
        TempBlob.CreateOutStream(SOutsrm);
        ManagementSalesReport.SaveAs('', ReportFormat::Excel, SOutsrm);
        Clear(SInstrm);
        Clear(SOutsrm);
        TempBlob.CreateInStream(SInstrm);
        GLSetup."50350 Report".CreateOutStream(SOutsrm);
        CopyStream(SOutsrm, SInstrm);
        GLSetup.Modify();
        CLEAR(DebtorsCollectionMGT);
        DebtorsCollectionMGT.SETFILTER(DebtorsCollectionMGT.PostDateFilter, '%1..%2', 0D, CALCDATE('CM', AsonDate));
        DebtorsCollectionMGT.SETFILTER(Sum_Amount, '>%1', 0);
        DebtorsCollectionMGT.OPEN;
        WHILE DebtorsCollectionMGT.READ DO BEGIN
            DebtorBalAmt += DebtorsCollectionMGT.Sum_Amount / 10000000;
        END;


        //MonthStartDate := CALCDATE('-CM',ASonDate);
        //MonthEndDate := CALCDATE('CM',ASonDate);

        SalesJournalData.SETFILTER(SalesJournalData.PostingDate, '%1..%2', CALCDATE('-CM', AsonDate), AsonDate);
        SalesJournalData.OPEN;
        WHILE SalesJournalData.READ DO BEGIN
            IF SalesJournalData.PostingDate = AsonDate THEN
                SalesASOnDate += SalesJournalData.LineAmount;
            SAlesForMonth += SalesJournalData.LineAmount;
        END;

        SalesReturnJournalData.SETFILTER(SalesReturnJournalData.PostingDate, '%1..%2', CALCDATE('-CM', AsonDate), AsonDate);
        SalesReturnJournalData.OPEN;
        WHILE SalesReturnJournalData.READ DO BEGIN
            IF SalesReturnJournalData.PostingDate = AsonDate THEN
                SalesASOnDate -= SalesReturnJournalData.LineAmount;
            SAlesForMonth -= SalesReturnJournalData.LineAmount;
        END;

        SalesASOnDate := ROUND(SalesASOnDate / 10000000, 0.01, '=');
        SAlesForMonth := ROUND(SAlesForMonth / 10000000, 0.01, '=');

        ManagementSalesReport.GetCollectionData1('', CALCDATE('-CM', AsonDate), AsonDate, Collection);
        Collection := ROUND(Collection / 10000000, 0.01, '=');

        SubJect := 'Sales for ' + FORMAT(AsonDate, 0, '<Month Text>') + ' is ' + FORMAT(SAlesForMonth) + ' Crores, sale on ' + FORMAT(AsonDate) + ' is ' + FORMAT(SalesASOnDate) + ' Cr. Debtors ' + FORMAT(ROUND(DebtorBalAmt, 0.01, '=')) + ' Cr, Collection MTD '
                    + FORMAT(Collection) + ' Cr.';

        /* SMTPMailSetup.GET;
        SMTPMailSetup.TESTFIELD("User ID");
        CLEAR(SMTPMail); */ // 15800 

        EmailCCList.Add('himanshu.jindal@orientbell.com');
        EmailCCList.Add('kulbhushan.sharma@orientbell.com');
        EmailCCList.Add('sandeep.jhanwar@orientbell.com');
        BodyText := ('Hi,<br>');
        BodyText += ('Please find enclosed Sales information as on ' + FORMAT(AsonDate, 0, '<Month Text>') + '<br><br>');
        BodyText += ('Thank You and Have a Good Day!');
        BodyText += ('Regards, <br>');
        BodyText += ('CFO Office, <br>');
        BodyText += ('Orient Bell Limited <br>');
        BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
        BodyText += ('New Delhi 110046, India <br>');
        BodyText += ('Tel. +91 11 4711 9252 <br>');
        BodyText += ('Fax. +91 11 2852 1273 <br>');
        // 15800  SMTPMail.CreateMessage('CFO Office - OBL.', 'cfooffice@orientbell.com', 'anuj.prashar@orientbell.com', SubJect, '', TRUE);
        EmailAddressList.Add('anuj.prashar@orientbell.com');
        EmailMsg.Create(EmailAddressList, 'Order Fulfillment Details', BodyText, true, EmailCCList, EmailBccList);
        GLSetup.SetAutoCalcFields(GLSetup."50350 Report");
        Clear(TInstrm3);
        if GLSetup."50350 Report".HasValue then begin
            GLSetup."50350 Report".CreateInStream(TInstrm3);
            EmailMsg.AddAttachment(FileName + '.xlsx', 'application/excel', TInstrm3);
            EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default); // Need to Change In case New Scenrio
        end;

    end;
}