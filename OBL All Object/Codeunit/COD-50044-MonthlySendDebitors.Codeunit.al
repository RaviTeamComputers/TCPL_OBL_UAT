codeunit 50044 "Monthly Send (Debitors)"
{

    trigger OnRun()
    begin

        SendProdAlertReport;
        SendNoMatStatusReport;

        IF DATE2DMY(TODAY, 1) = 1 THEN BEGIN

            GenerateReportSummary;

            //CreateSP_CityWiseSales;  //For SP File Creation
            //CreatePCH_CityWiseSales;  //For PCH File Creation
            //Create_CityWiseSales_All;  //For Complete File Creation
            //SendSP_CityWiseSales;     //For Email to SP
            //SendPCH_CityWiseSales;    //For Email to Branch Head
            //SendALL_CityWiseSales;    //For Email to Management

            //  Send_SalesGVT;        // GVT Scoreboard
            //  Send_SalesGVTPCH;     // GVT Scoreboard
        END;
        SendMGTMISReport;
        IF DATE2DMY(TODAY, 1) = 16 THEN BEGIN
            //Send_SalesGVT;        // GVT Scoreboardhiman
            Send_SalesGVTPCH;     // GVT Scoreboard
        END;



        IF GUIALLOWED THEN
            MESSAGE('Done');
    end;

    var
        txtfile: Text;
        SalesPerson: Record 13;
        CompletePath: Text;
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
        TInstrm2: InStream;
        TInstrm1: InStream;
        TInstrm4: InStream;
        TInstrm5: InStream;



    procedure GenerateReportSummary()
    var
        AgeingReportNotification: Report 50034;
    begin

        //ZH
        SalesPerson.RESET;
        SalesPerson.SETRANGE("Customer No.", '');
        SalesPerson.SETRANGE(Status, SalesPerson.Status::Enable);
        IF SalesPerson.FINDFIRST THEN BEGIN
            REPEAT
                CLEAR(AgeingReportNotification);
                AgeingReportNotification.SetParameters(TODAY + 1, CALCDATE('CM', TODAY + 1), '', SalesPerson.Code, '', '', '', FALSE);
                txtfile := 'DEBTORAGE_ZH_' + SalesPerson.Code;
                //AgeingReportNotification.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
                Clear(TempBlob);
                Clear(SInstrm);
                Clear(SOutsrm);
                Clear(SalesPerson."50034 Report");
                TempBlob.CreateInStream(SInstrm);
                TempBlob.CreateOutStream(SOutsrm);
                AgeingReportNotification.SaveAs('', ReportFormat::Excel, SOutsrm);
                Clear(SInstrm);
                Clear(SOutsrm);
                TempBlob.CreateInStream(SInstrm);
                SalesPerson."50034 Report".CreateOutStream(SOutsrm);
                CopyStream(SOutsrm, SInstrm);
                SalesPerson.Modify();

                SalesPerson.SetAutoCalcFields(SalesPerson."50034 Report");
                if SalesPerson."50034 Report".HasValue then begin
                    Clear(TInstrm1);
                    SalesPerson."50034 Report".CreateInStream(TInstrm1);
                    SendEmailSummary(SalesPerson, txtfile, FALSE, TInstrm1);
                end;
            UNTIL SalesPerson.NEXT = 0;
        END;

        //ZM
        SalesPerson.RESET;
        SalesPerson.SETRANGE("Customer No.", '');
        SalesPerson.SETRANGE(Status, SalesPerson.Status::Enable);

        IF SalesPerson.FINDFIRST THEN BEGIN
            REPEAT
                CLEAR(AgeingReportNotification);
                AgeingReportNotification.SetParameters(TODAY + 1, CALCDATE('CM', TODAY + 1), '', '', SalesPerson.Code, '', '', FALSE);
                txtfile := 'DEBTORAGE_ZM_' + SalesPerson.Code;
                AgeingReportNotification.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
                Clear(TempBlob);
                Clear(SInstrm);
                Clear(SOutsrm);
                Clear(SalesPerson."50034 Report");
                TempBlob.CreateInStream(SInstrm);
                TempBlob.CreateOutStream(SOutsrm);
                AgeingReportNotification.SaveAs('', ReportFormat::Excel, SOutsrm);
                Clear(SInstrm);
                Clear(SOutsrm);
                TempBlob.CreateInStream(SInstrm);
                SalesPerson."50034 Report".CreateOutStream(SOutsrm);
                CopyStream(SOutsrm, SInstrm);
                SalesPerson.Modify();
                SalesPerson.SetAutoCalcFields(SalesPerson."50034 Report");
                if SalesPerson."50034 Report".HasValue then begin
                    Clear(TInstrm1);
                    SalesPerson."50034 Report".CreateInStream(TInstrm1);
                    SendEmailSummary(SalesPerson, txtfile, FALSE, TInstrm1);
                end;
            UNTIL SalesPerson.NEXT = 0;
        END;

        //PCH
        SalesPerson.RESET;
        SalesPerson.SETRANGE("Customer No.", '');
        SalesPerson.SETRANGE(Status, SalesPerson.Status::Enable);

        IF SalesPerson.FINDFIRST THEN BEGIN
            REPEAT
                CLEAR(AgeingReportNotification);
                AgeingReportNotification.SetParameters(TODAY + 1, CALCDATE('CM', TODAY + 1), '', '', '', SalesPerson.Code, '', FALSE);
                txtfile := 'DEBTORAGE_PCH_' + SalesPerson.Code;
                AgeingReportNotification.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
                Clear(TempBlob);
                Clear(SInstrm);
                Clear(SOutsrm);
                Clear(SalesPerson."50034 Report");
                TempBlob.CreateInStream(SInstrm);
                TempBlob.CreateOutStream(SOutsrm);
                AgeingReportNotification.SaveAs('', ReportFormat::Excel, SOutsrm);
                Clear(SInstrm);
                Clear(SOutsrm);
                TempBlob.CreateInStream(SInstrm);
                SalesPerson."50034 Report".CreateOutStream(SOutsrm);
                CopyStream(SOutsrm, SInstrm);
                SalesPerson.Modify();
                SalesPerson.SetAutoCalcFields(SalesPerson."50034 Report");
                if SalesPerson."50034 Report".HasValue then begin
                    Clear(TInstrm1);
                    SalesPerson."50034 Report".CreateInStream(TInstrm1);
                    SendEmailSummary(SalesPerson, txtfile, FALSE, TInstrm1);
                end;
            UNTIL SalesPerson.NEXT = 0;
        END;

        //SP
        SalesPerson.RESET;
        SalesPerson.SETRANGE("Customer No.", '');
        SalesPerson.SETRANGE(Status, SalesPerson.Status::Enable);

        IF SalesPerson.FINDFIRST THEN BEGIN
            REPEAT
                CLEAR(AgeingReportNotification);
                AgeingReportNotification.SetParameters(TODAY + 1, CALCDATE('CM', TODAY + 1), '', '', '', '', SalesPerson.Code, FALSE);
                txtfile := 'DEBTORAGE_SP_' + SalesPerson.Code;
                AgeingReportNotification.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
                Clear(TempBlob);
                Clear(SInstrm);
                Clear(SOutsrm);
                Clear(SalesPerson."50034 Report");
                TempBlob.CreateInStream(SInstrm);
                TempBlob.CreateOutStream(SOutsrm);
                AgeingReportNotification.SaveAs('', ReportFormat::Excel, SOutsrm);
                Clear(SInstrm);
                Clear(SOutsrm);
                TempBlob.CreateInStream(SInstrm);
                SalesPerson."50034 Report".CreateOutStream(SOutsrm);
                CopyStream(SOutsrm, SInstrm);
                SalesPerson.Modify();
                SalesPerson.SetAutoCalcFields(SalesPerson."50034 Report");
                if SalesPerson."50034 Report".HasValue then begin
                    Clear(TInstrm1);
                    SalesPerson."50034 Report".CreateInStream(TInstrm1);
                    SendEmailSummary(SalesPerson, txtfile, FALSE, TInstrm1);
                end;
            UNTIL SalesPerson.NEXT = 0;
        END;

        //Summary
        CLEAR(AgeingReportNotification);
        AgeingReportNotification.SetParameters(TODAY + 1, CALCDATE('CM', TODAY + 1), '', '', '', '', '', FALSE);
        txtfile := 'DEBTORAGE_ALL_' + 'ALL';
        AgeingReportNotification.SAVEASEXCEL('C:\StateWiseReport\' + txtfile + '.xlsx');
        Clear(TempBlob);
        Clear(SInstrm);
        Clear(SOutsrm);
        Clear(SalesPerson."50034 Report");
        TempBlob.CreateInStream(SInstrm);
        TempBlob.CreateOutStream(SOutsrm);
        AgeingReportNotification.SaveAs('', ReportFormat::Excel, SOutsrm);
        Clear(SInstrm);
        Clear(SOutsrm);
        TempBlob.CreateInStream(SInstrm);
        SalesPerson."50034 Report".CreateOutStream(SOutsrm);
        CopyStream(SOutsrm, SInstrm);
        SalesPerson.Modify();
        SalesPerson.SetAutoCalcFields(SalesPerson."50034 Report");
        if SalesPerson."50034 Report".HasValue then begin
            Clear(TInstrm1);
            SalesPerson."50034 Report".CreateInStream(TInstrm1);
            SendEmailSummary(SalesPerson, txtfile, true, TInstrm1);

        end;
    end;

    procedure SendEmailSummary(LocalSalesPerson: Record 13; FileName: Text; SendSummary: Boolean; TInstrms: InStream)
    var
        Docno6: Code[20];
        Docno7: Code[20];
    begin
        Clear(EmailAddressList);
        Clear(EmailBccList);
        Clear(EmailCCList);
        Clear(BodyText);

        IF SendSummary THEN BEGIN

            //Send Summary.

            EmailCCList.Add('aditya.gupta@orientbell.com');
            EmailCCList.Add('pinaki.nandy@orientbell.com');
            EmailCCList.Add('himanshu.jindal@orientbell.com');
            EmailCCList.Add('sandeep.jhanwar@orientbell.com');
            EmailCCList.Add('amit.gupta@orientbell.com');
            EmailCCList.Add('pushpender.kumar@orientbell.com');
            EmailCCList.Add('Dharmendra.Singh@orientbell.com');
            EmailCCList.Add('rakesh.kumar@orientbell.com');
            EmailCCList.Add('narayan.jha@orientbell.com');
            EmailCCList.Add('bs.negi@orientbell.com');
            EmailCCList.Add('amit.goel@orientbell.com');
            EmailCCList.Add('donotreply@orientbell.com');
            EmailCCList.Add('sujeet.singh@orientbell.com');
            BodyText := ('Dear All <br>');
            //SMTPMail.AppendBody('There was a bug in the report, which has been fixed now, please find the correct report');
            BodyText += ('Please find enclosed information on debtors showing customer wise and day wise amounts getting due during ' + FORMAT(TODAY, 0, '<Month Text>') + '<br><br>');
            BodyText += ('Thank You and Have a Good Day!');
            BodyText += ('Regards, <br>');
            BodyText += ('CFO Office, <br>');
            BodyText += ('Orient Bell Limited <br>');
            BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
            BodyText += ('New Delhi 110046, India <br>');
            BodyText += ('Tel. +91 11 4711 9252 <br>');
            BodyText += ('Fax. +91 11 2852 1273 <br>');
            // SMTPMail.CreateMessage('CFO Office - OBL.', 'cfooffice@orientbell.com', 'donotreply@orientbell.com', 'Debtor Ageing Report', '', TRUE);
            EmailAddressList.Add('donotreply@orientbell.com');
            EmailMsg.Create(EmailAddressList, 'Debtor Ageing Report', BodyText, true, EmailCCList, EmailBccList);
            EmailMsg.AddAttachment(FileName + '.xlsx', 'application/excel', TInstrms);
            EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);
        END ELSE BEGIN
            //PCH
            IF LocalSalesPerson."E-Mail" <> '' THEN BEGIN

                EmailCCList.Add('donotreply@orientbell.com');
                BodyText := ('Dear ' + LocalSalesPerson.Name + '<br>');
                BodyText += ('Please find enclosed information on debtors showing customer wise and day wise amounts getting due during ' + FORMAT(TODAY, 0, '<Month Text>') + '<br><br>');
                //SMTPMail.AppendBody('There was a bug in the report, which has been fixed now, please find the correct report');
                BodyText += ('You should take a printout of this and keep it with you.');
                BodyText += ('This information will help you tracking customer dues well in advance and plan its collection much before order booking and its faster processing');
                BodyText += ('Regards, <br>');
                BodyText += ('CFO Office, <br>');
                BodyText += ('Orient Bell Limited <br>');
                BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
                BodyText += ('New Delhi 110046, India <br>');
                BodyText += ('Tel. +91 11 4711 9252 <br>');
                BodyText += ('Fax. +91 11 2852 1273 <br>');
                // 15800 SMTPMail.CreateMessage('CFO Office - OBL.', 'cfooffice@orientbell.com', LocalSalesPerson."E-Mail", 'Debtor Ageing Report', '', TRUE);
                EmailAddressList.Add(LocalSalesPerson."E-Mail");

                EmailMsg.Create(EmailAddressList, 'Debtor Ageing Report', BodyText, true, EmailCCList, EmailBccList);
                EmailMsg.AddAttachment(FileName + '.xlsx', 'application/excel', TInstrms);
                EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);
            END;
        END;
    end;


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
        Clear(EmailAddressList);
        Clear(EmailBccList);
        Clear(EmailCCList);
        Clear(BodyText);

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
        EmailMsg.Create(EmailAddressList, SubJect, BodyText, true, EmailCCList, EmailBccList);
        GLSetup.SetAutoCalcFields(GLSetup."50350 Report");
        Clear(TInstrm3);
        if GLSetup."50350 Report".HasValue then begin
            GLSetup."50350 Report".CreateInStream(TInstrm3);
            EmailMsg.AddAttachment(FileName + '.xlsx', 'application/excel', TInstrm3);
            EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);
        end;

    end;







    local procedure ISActiveSalesPerson(SPCOde: Code[20]): Boolean
    var
        Customer: Record 18;
    begin
        Customer.RESET;
        Customer.SETCURRENTKEY("Salesperson Code");
        Customer.SETRANGE("Salesperson Code", SPCOde);
        IF Customer.FINDFIRST THEN
            EXIT(TRUE);
    end;

    local procedure ISActivePCH(SPCOde: Code[20]): Boolean
    var
        Customer: Record 18;
    begin
        Customer.RESET;
        Customer.SETCURRENTKEY("PCH Code");
        Customer.SETRANGE("PCH Code", SPCOde);
        IF Customer.FINDFIRST THEN
            EXIT(TRUE);
    end;


    procedure Send_SalesGVTPCH()
    var
        MatrixMaster: Record 50003;
        Text101: Label 'SalesGVTPCH';
        Filepath: Text;
        GVTScorecardPCHFinal: Report 50074;
    begin
        GLSetup.Get();
        Clear(EmailBccList);
        Clear(EmailCCList);
        Clear(EmailAddressList);
        Clear(BodyText);
        MatrixMaster.RESET;
        Filepath := 'C:\SalesGVTPCH\' + Text101 + '.xlsx';
        // 15800  GVTScorecardPCHFinal.SAVEASEXCEL(Filepath);
        Clear(TempBlob);
        Clear(SInstrm);
        Clear(SOutsrm);
        Clear(GLSetup."50074 Report");
        TempBlob.CreateInStream(SInstrm);
        TempBlob.CreateOutStream(SOutsrm);
        GVTScorecardPCHFinal.SaveAs('', ReportFormat::Excel, SOutsrm);
        Clear(SInstrm);
        Clear(SOutsrm);
        TempBlob.CreateInStream(SInstrm);
        GLSetup."50074 Report".CreateOutStream(SOutsrm);
        CopyStream(SOutsrm, SInstrm);
        GLSetup.Modify();
        COMMIT;
        SLEEP(200);
        EmailCCList.Add('kulbhushan.sharma@orientbell.com');
        EmailCCList.Add('divya.chauhan@orientbell.com');

        BodyText := ('Please find the attached file.<br>');
        // 15800  SMTPMail.CreateMessage('', 'donotreply@orientbell.com', 'sumit.thapar@orientbell.com', 'Sales GVT PCH Wise', '', TRUE);
        EmailAddressList.Add('sumit.thapar@orientbell.com');
        EmailMsg.Create(EmailAddressList, 'Sales GVT PCH Wise', BodyText, true, EmailCCList, EmailBccList);
        GLSetup.SetAutoCalcFields(GLSetup."50074 Report");
        if GLSetup."50074 Report".HasValue then begin
            Clear(TInstrm1);
            GLSetup."50074 Report".CreateInStream(TInstrm1);
            EmailMsg.AddAttachment(Text101 + '.xlsx', 'application/excel', TInstrm1);
            EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);
        end;
    end;


    procedure Send_SalesGVT()
    var
        Text102: Label 'SalesGVT';
        Filepath: Text;
        GVTScorecardFinal: Report 50293;
    begin
        GLSetup.Get();
        Clear(EmailBccList);
        Clear(EmailCCList);
        Clear(EmailAddressList);
        Clear(BodyText);

        Filepath := 'C:\SalesGVT\' + Text102 + '.xlsx';
        // 15800 GVTScorecardFinal.SAVEASEXCEL(Filepath);
        Clear(TempBlob);
        Clear(SInstrm);
        Clear(SOutsrm);
        Clear(GLSetup."50293 Report");
        TempBlob.CreateInStream(SInstrm);
        TempBlob.CreateOutStream(SOutsrm);
        GVTScorecardFinal.SaveAs('', ReportFormat::Excel, SOutsrm);
        Clear(SInstrm);
        Clear(SOutsrm);
        TempBlob.CreateInStream(SInstrm);
        GLSetup."50293 Report".CreateOutStream(SOutsrm);
        CopyStream(SOutsrm, SInstrm);
        GLSetup.Modify();
        COMMIT;
        SLEEP(200);

        // 15800  SMTPMail.CreateMessage('', 'donotreply@orientbell.com', 'deepak.m@orientbell.com', 'Sales GVT All', '', TRUE);
        EmailCCList.Add('kulbhushan.sharma@orientbell.com');
        EmailAddressList.Add('deepak.m@orientbell.com');
        EmailMsg.Create(EmailAddressList, 'Sales GVT All', BodyText, true, EmailCCList, EmailBccList);
        BodyText := ('Please find the attached file.<br>');
        GLSetup.SetAutoCalcFields(GLSetup."50293 Report");
        if GLSetup."50293 Report".HasValue then begin
            Clear(TInstrm1);
            GLSetup."50293 Report".CreateInStream(TInstrm1);
            EmailMsg.AddAttachment(Text102 + '.xlsx', 'application/excel', TInstrm1);
            EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);
        end;
    end;


    procedure SendProdAlertReport()
    var
        SalespersonPurchaser: Record 13;
        Text100: Label 'ProdAlert';
        Filepath: Text;
        Location: Record 14;
        ProductionAlertSixMonth: Report 50130;
        FIleAttached: Boolean;
    begin
        Clear(EmailAddressList);
        Clear(EmailBccList);
        Clear(EmailCCList);
        Clear(BodyText);
        Location.RESET;
        Location.SETFILTER(Code, '%1|%2|%3', 'SKD-WH-MFG', 'DRA-WH-MFG', 'HSK-WH-MFG');
        IF Location.FINDFIRST THEN BEGIN


            EmailCCList.Add('alok.agarwal@orientbell.com');
            EmailCCList.Add('rakesh.kumar@orientbell.com');

            EmailCCList.Add('kulbhushan.sharma@orientbell.com');
            BodyText := ('Hi,<br>');
            BodyText += ('Please find Enclosed the Production Alert Report as on date.<br>');
            BodyText += ('<br>');
            BodyText += ('Thank You and Have a Good Day!<br>');
            BodyText += ('<br><br>');
            BodyText += ('Regards, <br>');
            BodyText += ('Production Planning Team, <br>');
            BodyText += ('Orient Bell Limited <br>');
            BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
            BodyText += ('New Delhi 110046, India <br>');
            BodyText += ('Tel. +91 11 4711 9190 <br>');
            BodyText += ('Fax. +91 11 2852 1273 <br>');
            // 15800 SMTPMail.CreateMessage('Production Planning', 'donotreply@orientbell.com', 'amit.gupta@orientbell.com', 'Production Alert Report As on Date - ' + FORMAT(TODAY, 9), '', TRUE);
            EmailAddressList.Add('amit.gupta@orientbell.com');
            EmailMsg.Create(EmailAddressList, 'Production Alert Report As on Date - ' + FORMAT(TODAY, 9), BodyText, true, EmailCCList, EmailBccList);
            REPEAT
                Filepath := 'C:\AutoMail\ProductionAlert\' + Text100 + '_' + Location.Code + '.xlsx';
                CLEAR(ProductionAlertSixMonth);
                ProductionAlertSixMonth.SetLocationFilter(Location.Code);
                Clear(TempBlob);
                Clear(SInstrm);
                Clear(SOutsrm);
                Clear(Location."50130 Production Alert");
                TempBlob.CreateInStream(SInstrm);
                TempBlob.CreateOutStream(SOutsrm);
                ProductionAlertSixMonth.SaveAs('', ReportFormat::Excel, SOutsrm);
                Clear(SInstrm);
                Clear(SOutsrm);
                TempBlob.CreateInStream(SInstrm);
                Location."50130 Production Alert".CreateOutStream(SOutsrm);
                CopyStream(SOutsrm, SInstrm);
                Location.Modify();
                Location.SetAutoCalcFields(Location."50130 Production Alert");
                if Location."50130 Production Alert".HasValue then begin
                    Clear(TInstrm1);
                    Location."50130 Production Alert".CreateInStream(TInstrm1);
                    EmailMsg.AddAttachment(Text100 + '_' + Location.Code + '.xlsx', 'application/excel', TInstrm1);
                    FIleAttached := TRUE;
                end;
            UNTIL Location.NEXT = 0;
            IF FIleAttached THEN
                EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);

        END;
    end;

    procedure SendNoMatStatusReport()
    var
        SalespersonPurchaser: Record 13;
        Text100: Label 'No_Material_Unique_Item';
        Filepath: Text;
        Location: Record 14;
        SAlesOrderStatusReport: Report 50171;
        FIleAttached: Boolean;
        OrderClearance: Report 50059;
        Text101: Label 'NoMaterialAnalytics';
        Filepath1: Text;
        Filepath2: Text;
        Text102: Label 'ItemWiseNoMaterialAnalytics';
        SalesOrderNomatReport: Report 50058;
    begin
        Clear(EmailAddressList);
        Clear(EmailBccList);
        Clear(EmailCCList);
        Clear(BodyText);

        GLSetup.Get();
        EmailCCList.Add('aditya.gupta@orientbell.com');
        EmailCCList.Add('himanshu.jindal@orientbell.com');
        EmailCCList.Add('anil.Agarwal@orientbell.com');
        EmailCCList.Add('alok.agarwal@orientbell.com');
        EmailCCList.Add('pinaki.nandi@orientbell.com');
        EmailCCList.Add('sanjeev.gupta@orientbell.com');
        EmailCCList.Add('amit.gupta@orientbell.com');
        EmailCCList.Add('rakesh.kumar@orientbell.com');
        EmailCCList.Add('pushpender.kumar@orientbell.com');
        EmailCCList.Add('kulbhushan.sharma@orientbell.com');
        EmailCCList.Add('jegatheeswaran.palsamy@orientbell.com');

        BodyText := ('Hi,<br>');
        BodyText += ('Please find Enclosed the No-Material Status Report as on date.<br>');
        BodyText += ('<br>');
        BodyText += ('Thank You and Have a Good Day!<br>');
        BodyText += ('<br><br>');
        BodyText += ('Regards, <br>');
        BodyText += ('Production Planning Team, <br>');
        BodyText += ('Orient Bell Limited <br>');
        BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
        BodyText += ('New Delhi 110046, India <br>');
        BodyText += ('Tel. +91 11 4711 9190 <br>');
        BodyText += ('Fax. +91 11 2852 1273 <br>');
        // 15800 SMTPMail.CreateMessage('Production Planning', 'donotreply@orientbell.com', 'Ghanshyam.gupta@orientbell.com;Jagdish.pal@orientbell.com;Vishal.verma@orientbell.com;Satyendra.kumar@orientbell.com;Dharmendra.singh@orientbell.com;Amitkumar.shukla@orientbell.com;Veerpartap.singh@orientbell.com;Sumit.chaudhary@orientbell.com;Pk.singh@orientbell.com;Ajay.tripathi@orientbell.com;Anil.goel@orientbell.com;Sanjeev.pareek@orientbell.com;t.venugopalan@orientbell.com;sanjay.maheshwari@orientbell.com',
        // 15800 'No Material Status Report As on Date - ' + FORMAT(TODAY - 1, 9), '', TRUE);
        EmailAddressList.Add('Ghanshyam.gupta@orientbell.com');
        EmailAddressList.Add('Jagdish.pal@orientbell.com');
        EmailAddressList.Add('Vishal.verma@orientbell.com');
        EmailAddressList.Add('Satyendra.kumar@orientbell.com');
        EmailAddressList.Add('Dharmendra.singh@orientbell.com');
        EmailAddressList.Add('Amitkumar.shukla@orientbell.com');
        EmailAddressList.Add('Veerpartap.singh@orientbell.com');
        EmailAddressList.Add('Sumit.chaudhary@orientbell.com');
        EmailAddressList.Add('Pk.singh@orientbell.com');
        EmailAddressList.Add('Ajay.tripathi@orientbell.com');
        EmailAddressList.Add('Anil.goel@orientbell.com');
        EmailAddressList.Add('Sanjeev.pareek@orientbell.com');
        EmailAddressList.Add('t.venugopalan@orientbell.com');
        EmailAddressList.Add('sanjay.maheshwari@orientbell.com');
        EmailMsg.Create(EmailAddressList, 'No Material Status Report As on Date - ' + FORMAT(TODAY - 1, 9), BodyText, true, EmailCCList, EmailBccList);
        Filepath := 'C:\AutoMail\NoMatStatusReport\' + Text100 + '_' + FORMAT(TODAY) + '.xlsx';
        Filepath1 := 'C:\AutoMail\NoMatStatusReport\' + Text101 + '_' + FORMAT(TODAY) + '.xlsx';
        //    Filepath2 := 'C:\AutoMail\NoMatStatusReport\'+ Text102+'_'+FORMAT(TODAY)+'.xlsx';
        CLEAR(OrderClearance);
        //  OrderClearance.SAVEASEXCEL(Filepath1);
        Clear(TempBlob);
        Clear(SInstrm);
        Clear(SOutsrm);
        Clear(GLSetup."50059 Report");
        TempBlob.CreateInStream(SInstrm);
        TempBlob.CreateOutStream(SOutsrm);
        OrderClearance.SaveAs('', ReportFormat::Excel, SOutsrm);
        Clear(SInstrm);
        Clear(SOutsrm);
        TempBlob.CreateInStream(SInstrm);
        GLSetup."50059 Report".CreateOutStream(SOutsrm);
        CopyStream(SOutsrm, SInstrm);

        CLEAR(SAlesOrderStatusReport);
        Clear(TempBlob);
        Clear(SInstrm);
        Clear(SOutsrm);
        Clear(GLSetup."50171 Report");
        TempBlob.CreateInStream(SInstrm);
        TempBlob.CreateOutStream(SOutsrm);
        SAlesOrderStatusReport.SaveAs('', ReportFormat::Excel, SOutsrm);
        Clear(SInstrm);
        Clear(SOutsrm);
        TempBlob.CreateInStream(SInstrm);
        GLSetup."50171 Report".CreateOutStream(SOutsrm);
        CopyStream(SOutsrm, SInstrm);
        GLSetup.Modify();

        GLSetup.SetAutoCalcFields(GLSetup."50059 Report", GLSetup."50171 Report");
        if GLSetup."50059 Report".HasValue then begin
            Clear(TInstrm1);
            GLSetup."50059 Report".CreateInStream(TInstrm1);
            EmailMsg.AddAttachment(Text101 + '_' + FORMAT(TODAY) + '.xlsx', 'application/excel', TInstrm1);
        end;
        if GLSetup."50171 Report".HasValue then begin
            Clear(TInstrm2);
            GLSetup."50171 Report".CreateInStream(TInstrm2);
            EmailMsg.AddAttachment(Text100 + '_' + FORMAT(TODAY) + '.xlsx', 'application/excel', TInstrm2);
        end;
        EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);
    end;


}

