codeunit 50042 "Order Fulfillment Send Mail"
{
    // --MSVRN 301117-- V1.00

    var
        EmailObj: Codeunit Email;
        GLSetup: Record "General Ledger Setup";
        MailtoPsGLSetup: Record "General Ledger Setup";
        MailtoCCGLSetup: Record "General Ledger Setup";
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
        GlIntsrem: InStream;
        GLInstrem2: InStream;
        TInstrm4: InStream;
        TInstrm5: InStream;

    trigger OnRun()
    begin

        //IF GUIALLOWED THEN
        //IF CONFIRM('Do you want to send order fulfillment mail?',TRUE) THEN

        IF (TIME < 010100T) THEN BEGIN
            GenerateFiles;
            //MailtoSPs;
        END;

        IF (TIME > 110100T) AND (TIME < 120100T) THEN BEGIN
            GenerateFilesCC;
            // MailtoCC;
        END;
    end;

    procedure GenerateFiles()
    var
        R50010: Report 50010;
        RecItem: Record 27;
        txtfile: Text;
        txtfile2: Text;
        txtfile3: Text;
        RecSalesLine: Record 37;
        R50402: Report 50394;
        RecSalesHeader: Record 36;
        R50403: Report 50345;
        r50065: Report 50065;
        reccustomer: Record 18;
        txtfile4: Text;
        r50296: Report 50296;
        txtfile5: Text;
    begin
        GLSetup.Get();
        RecItem.RESET;
        RecItem.SETFILTER(RecItem."Plant Code", '%1|%2|%3', 'M', 'D', 'H');
        RecItem.SETFILTER(RecItem."Location Filter", '%1|%2|%3', 'SKD-WH-MFG', 'DRA-WH-MFG', 'HSK-WH-MFG');
        IF RecItem.FINDFIRST THEN BEGIN
            CLEAR(R50010);
            R50010.SETTABLEVIEW(RecItem);
            txtfile := ' Items';
            // 15800 R50010.SAVEASEXCEL('C:\OrderFF\' + txtfile + '.xlsx');
            Clear(TempBlob);
            Clear(SInstrm);
            Clear(SOutsrm);
            Clear(GLSetup."50010 Report");
            TempBlob.CreateInStream(SInstrm);
            TempBlob.CreateOutStream(SOutsrm);
            R50010.SaveAs('', ReportFormat::Excel, SOutsrm);
            Clear(SInstrm);
            Clear(SOutsrm);
            TempBlob.CreateInStream(SInstrm);
            GLSetup."50010 Report".CreateOutStream(SOutsrm);
            CopyStream(SOutsrm, SInstrm);
            GLSetup.Modify();
        END;
        RecSalesLine.CALCFIELDS(RecSalesLine."Posting Date");
        RecSalesLine.RESET;
        IF RecSalesLine.FINDFIRST THEN BEGIN
            CLEAR(R50402);
            R50402.SETTABLEVIEW(RecSalesLine);
            txtfile2 := ' Sales Line Details';
            //R50402.SAVEASEXCEL('C:\OrderFF\' + txtfile2 + '.xlsx');
            Clear(TempBlob);
            Clear(SInstrm);
            Clear(SOutsrm);
            Clear(GLSetup."50402 Report");
            TempBlob.CreateInStream(SInstrm);
            TempBlob.CreateOutStream(SOutsrm);
            R50402.SaveAs('', ReportFormat::Excel, SOutsrm);
            Clear(SInstrm);
            Clear(SOutsrm);
            TempBlob.CreateInStream(SInstrm);
            GLSetup."50402 Report".CreateOutStream(SOutsrm);
            CopyStream(SOutsrm, SInstrm);
        END;
        RecSalesHeader.RESET;
        IF RecSalesHeader.FINDFIRST THEN BEGIN
            CLEAR(R50403);
            R50403.SETTABLEVIEW(RecSalesHeader);
            txtfile3 := ' Sales Order Details';
            // 15800 R50403.SAVEASEXCEL('C:\OrderFF\' + txtfile3 + '.xlsx');
            Clear(TempBlob);
            Clear(SInstrm);
            Clear(SOutsrm);
            Clear(GLSetup."50403 Report");
            TempBlob.CreateInStream(SInstrm);
            TempBlob.CreateOutStream(SOutsrm);
            R50403.SaveAs('', ReportFormat::Excel, SOutsrm);
            Clear(SInstrm);
            Clear(SOutsrm);
            TempBlob.CreateInStream(SInstrm);
            GLSetup."50403 Report".CreateOutStream(SOutsrm);
            CopyStream(SOutsrm, SInstrm);
        END;
        IF reccustomer.FINDFIRST THEN BEGIN
            CLEAR(r50065);
            r50065.SETTABLEVIEW(reccustomer);
            txtfile4 := ' Customer';
            // 15800  r50065.SAVEASEXCEL('C:\OrderFF\' + txtfile4 + '.xlsx');
            Clear(TempBlob);
            Clear(SInstrm);
            Clear(SOutsrm);
            Clear(GLSetup."50065 Report");
            TempBlob.CreateInStream(SInstrm);
            TempBlob.CreateOutStream(SOutsrm);
            r50065.SaveAs('', ReportFormat::Excel, SOutsrm);
            Clear(SInstrm);
            Clear(SOutsrm);
            TempBlob.CreateInStream(SInstrm);
            GLSetup."50065 Report".CreateOutStream(SOutsrm);
            CopyStream(SOutsrm, SInstrm);
        END;

        CLEAR(r50296);
        txtfile5 := 'SOLineCombined';
        // 15800 r50296.SAVEASEXCEL('C:\OrderFF\' + txtfile5 + '.xlsx');
        Clear(TempBlob);
        Clear(SInstrm);
        Clear(SOutsrm);
        Clear(GLSetup."50296 Report");
        TempBlob.CreateInStream(SInstrm);
        TempBlob.CreateOutStream(SOutsrm);
        r50296.SaveAs('', ReportFormat::Excel, SOutsrm);
        Clear(SInstrm);
        Clear(SOutsrm);
        TempBlob.CreateInStream(SInstrm);
        GLSetup."50296 Report".CreateOutStream(SOutsrm);
        CopyStream(SOutsrm, SInstrm);

        GLSetup.Modify();
        Clear(EmailAddressList);
        Clear(EmailBccList);
        Clear(EmailCCList);
        Clear(BodyText);
        // 15800  SMTPSetup.GET();


        EmailCCList.Add('amit.gupta@orientbell.com'); //--  041217
        EmailCCList.Add('kulbhushan.sharma@orientbell.com'); //--  041217
        EmailCCList.Add('jatinder.kumar@orientbell.com'); //--  041217

        BodyText := ('Dear  ');
        BodyText += ('<br><br>');
        BodyText += ('Please find the enclosed detail with this email. ');
        BodyText += ('<br><br>');
        BodyText += ('This is for your records');
        BodyText += ('<br><br>');
        BodyText += ('Regards, <br>');
        BodyText += ('Orient Bell Limited <br>');
        BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
        BodyText += ('New Delhi 110046, India <br>');
        BodyText += ('Tel. +91 11 4711 9100 <br>');
        BodyText += ('Fax. +91 11 2852 1273 <br>');
        txtfile := ' Closing Stock Marketing';
        txtfile2 := ' Sales Line Details';
        txtfile3 := ' Sales Order Details';
        txtfile4 := ' Customer Detailed Ageing';
        txtfile5 := 'SOLineCombined';

        // 15800 SMTPMailCodeUnit.CreateMessage('Orient Bell Limited.', 'donotreply@orientbell.com', 'tara.chand@orientbell.com', 'Order Fulfillment Details', '', TRUE);
        EmailAddressList.Add('tara.chand@orientbell.com');
        EmailMsg.Create(EmailAddressList, 'Order Fulfillment Details', BodyText, true, EmailCCList, EmailBccList);
        GLSetup.SetAutoCalcFields(GLSetup."50010 Report", GLSetup."50402 Report", GLSetup."50403 Report", GLSetup."50065 Report", GLSetup."50296 Report");
        Clear(GLInstrem2);
        if GLSetup."50010 Report".HasValue then begin
            GLSetup."50010 Report".CreateInStream(GLInstrem2);
            EmailMsg.AddAttachment(txtfile + '.xlsx', 'application/excel', GLInstrem2);

        end;
        Clear(TInstrm2);
        if GLSetup."50402 Report".HasValue then begin
            GLSetup."50402 Report".CreateInStream(TInstrm2);
            EmailMsg.AddAttachment(txtfile2 + '.xlsx', 'application/excel', TInstrm2);
        end;

        Clear(TInstrm3);
        if GLSetup."50403 Report".HasValue then begin
            GLSetup."50403 Report".CreateInStream(TInstrm3);
            EmailMsg.AddAttachment(txtfile3 + '.xlsx', 'application/excel', TInstrm3);
        end;

        Clear(TInstrm4);
        if GLSetup."50065 Report".HasValue then begin
            GLSetup."50065 Report".CreateInStream(TInstrm4);
            EmailMsg.AddAttachment(txtfile4 + '.xlsx', 'application/excel', TInstrm4);
        end;
        Clear(TInstrm5);
        if GLSetup."50296 Report".HasValue then begin
            GLSetup."50296 Report".CreateInStream(TInstrm5);
            EmailMsg.AddAttachment(txtfile5 + '.xlsx', 'application/excel', TInstrm5);
        end;

        EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);

        MESSAGE('Done');
    end;

    procedure MailtoSPs()
    var
        txtfile: Text[250];
        txtfile2: Text;
        txtfile3: Text;
        txtfile4: Text;
        txtfile5: Text;
    begin
        MailtoPsGLSetup.get();
        Clear(EmailAddressList);
        Clear(EmailBccList);
        Clear(EmailCCList);
        Clear(BodyText);
        // 15800  SMTPSetup.GET();

        EmailCCList.Add('vivek.shrivastav@orientbell.com'); //--  041217
        EmailCCList.Add('amit.gupta@orientbell.com'); //--  041217
        EmailCCList.Add('kulbhushan.sharma@orientbell.com'); //--  041217
        EmailCCList.Add('jatinder.kumar@orientbell.com'); //--  041217
        EmailCCList.Add('mamle.ram@orientbell.com'); //--  041217
        BodyText := ('Dear  ');
        BodyText += ('<br><br>');
        BodyText += ('Please find the enclosed detail with this email. ');
        BodyText += ('<br><br>');
        BodyText += ('This is for your records');
        BodyText += ('<br><br>');
        BodyText += ('Regards, <br>');
        BodyText += ('Orient Bell Limited <br>');
        BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
        BodyText += ('New Delhi 110046, India <br>');
        BodyText += ('Tel. +91 11 4711 9100 <br>');
        BodyText += ('Fax. +91 11 2852 1273 <br>');
        txtfile := ' Items';
        txtfile2 := ' Sales Line Details';
        txtfile3 := ' Sales Order Details';
        txtfile4 := ' Customer';
        txtfile5 := 'SOLineCombined';

        // 15800 SMTPMailCodeUnit.CreateMessage('Orient Bell Limited.', 'donotreply@orientbell.com', 'tara.chand@orientbell.com', 'Order Fulfillment Details', '', TRUE);
        EmailAddressList.Add('tara.chand@orientbell.com');
        EmailMsg.Create(EmailAddressList, 'Order Fulfillment Details', BodyText, true, EmailCCList, EmailBccList);
        MailtoPsGLSetup.SetAutoCalcFields(MailtoPsGLSetup."50010 Report", MailtoPsGLSetup."50402 Report", MailtoPsGLSetup."50403 Report", MailtoPsGLSetup."50065 Report", MailtoPsGLSetup."50296 Report");
        Clear(GLInstrem2);
        //if MailtoPsGLSetup."50010 Report".HasValue then begin
        MailtoPsGLSetup."50010 Report".CreateInStream(GLInstrem2);
        EmailMsg.AddAttachment(txtfile + '.xlsx', 'application/excel', GLInstrem2);
        //end;

        if MailtoPsGLSetup."50402 Report".HasValue then begin
            Clear(TInstrm2);
            MailtoPsGLSetup."50402 Report".CreateInStream(TInstrm2);
            EmailMsg.AddAttachment(txtfile2 + '.xlsx', 'application/excel', TInstrm2);
        end;

        Clear(TInstrm3);
        if MailtoPsGLSetup."50403 Report".HasValue then begin
            MailtoPsGLSetup."50403 Report".CreateInStream(TInstrm3);
            EmailMsg.AddAttachment(txtfile3 + '.xlsx', 'application/excel', TInstrm3);
        end;

        Clear(TInstrm4);
        if MailtoPsGLSetup."50065 Report".HasValue then begin
            MailtoPsGLSetup."50065 Report".CreateInStream(TInstrm4);
            EmailMsg.AddAttachment(txtfile4 + '.xlsx', 'application/excel', TInstrm4);
        end;
        Clear(TInstrm5);
        if MailtoPsGLSetup."50296 Report".HasValue then begin
            MailtoPsGLSetup."50296 Report".CreateInStream(TInstrm5);
            EmailMsg.AddAttachment(txtfile4 + '.xlsx', 'application/excel', TInstrm5);
        end;
        EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);

        /* IF ((EXISTS('C:\OrderFF\' + txtfile + '.xlsx')) OR (EXISTS('C:\OrderFF\' + txtfile2 + '.xlsx')) OR (EXISTS('C:\OrderFF\' + txtfile3 + '.xlsx')) OR (EXISTS('C:\OrderFF\' + txtfile4 + '.xlsx')) OR (EXISTS('C:\OrderFF\' + txtfile5 + '.xlsx'))) THEN BEGIN
            SMTPMailCodeUnit.AddAttachment('C:\OrderFF\' + txtfile + '.xlsx', txtfile + '.xlsx');
            SMTPMailCodeUnit.AddAttachment('C:\OrderFF\' + txtfile2 + '.xlsx', txtfile2 + '.xlsx');
            SMTPMailCodeUnit.AddAttachment('C:\OrderFF\' + txtfile3 + '.xlsx', txtfile3 + '.xlsx');
            SMTPMailCodeUnit.AddAttachment('C:\OrderFF\' + txtfile4 + '.xlsx', txtfile4 + '.xlsx');
            SMTPMailCodeUnit.AddAttachment('C:\OrderFF\' + txtfile5 + '.xlsx', txtfile5 + '.xlsx');
            SMTPMailCodeUnit.Send();
        END; */ // 15800
    end;

    procedure GenerateFilesCC()
    var
        txtfile: Text;
        R50292: Report 50292;
    begin
        GLSetup.Get();
        CLEAR(R50292);
        txtfile := 'PaymentCreditIssue';
        // 15800 R50292.SAVEASEXCEL('C:\OrderFF\' + txtfile + '.xlsx');
        Clear(TempBlob);
        Clear(SInstrm);
        Clear(SOutsrm);
        Clear(GLSetup."50292 Report");
        TempBlob.CreateInStream(SInstrm);
        TempBlob.CreateOutStream(SOutsrm);
        R50292.SaveAs('', ReportFormat::Excel, SOutsrm);
        Clear(SInstrm);
        Clear(SOutsrm);
        TempBlob.CreateInStream(SInstrm);
        GLSetup."50292 Report".CreateOutStream(SOutsrm);
        CopyStream(SOutsrm, SInstrm);
        GLSetup.Modify();

        Clear(EmailAddressList);
        Clear(EmailBccList);
        Clear(EmailCCList);
        Clear(BodyText);


        EmailCCList.Add('amit.gupta@orientbell.com'); //--  041217
        EmailCCList.Add('kulbhushan.sharma@orientbell.com'); //--  041217
        BodyText := ('Dear  ');
        BodyText += ('<br><br>');
        BodyText += ('Please find the enclosed Payment & Credit Issue Report. ');
        BodyText += ('<br><br>');
        BodyText += ('This is for your records');
        BodyText += ('<br><br>');
        BodyText += ('Regards, <br>');
        BodyText += ('Orient Bell Limited <br>');
        BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
        BodyText += ('New Delhi 110046, India <br>');
        BodyText += ('Tel. +91 11 4711 9100 <br>');
        BodyText += ('Fax. +91 11 2852 1273 <br>');
        txtfile := 'PaymentCreditIssue';
        // 15800  SMTPMailCodeUnit.CreateMessage('Orient Bell Limited.', 'donotreply@orientbell.com', 'tara.chand@orientbell.com', 'Payment & Credit Issue', '', TRUE);
        EmailAddressList.Add('tara.chand@orientbell.com');
        EmailMsg.Create(EmailAddressList, 'Order Fulfillment Details', BodyText, true, EmailCCList, EmailBccList);
        GLSetup.SetAutoCalcFields(GLSetup."50292 Report");
        Clear(TInstrm5);
        if GLSetup."50292 Report".HasValue then begin
            GLSetup."50292 Report".CreateInStream(TInstrm5);
            EmailMsg.AddAttachment(txtfile + '.xlsx', 'application/excel', TInstrm5);
        end;
        EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);
        MESSAGE('Done');
    end;

    procedure MailtoCC()
    var
        txtfile: Text[250];
    begin
        // 15800 SMTPSetup.GET();
        MailtoCCGLSetup.Get();
        Clear(EmailAddressList);
        Clear(EmailBccList);
        Clear(EmailCCList);
        Clear(BodyText);


        EmailCCList.Add('vivek.shrivastav@orientbell.com'); //--  041217
        EmailCCList.Add('amit.gupta@orientbell.com'); //--  041217
        EmailCCList.Add('kulbhushan.sharma@orientbell.com'); //--  041217
        BodyText := ('Dear  ');
        BodyText += ('<br><br>');
        BodyText += ('Please find the enclosed Payment & Credit Issue Report. ');
        BodyText += ('<br><br>');
        BodyText += ('This is for your records');
        BodyText += ('<br><br>');
        BodyText += ('Regards, <br>');
        BodyText += ('Orient Bell Limited <br>');
        BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
        BodyText += ('New Delhi 110046, India <br>');
        BodyText += ('Tel. +91 11 4711 9100 <br>');
        BodyText += ('Fax. +91 11 2852 1273 <br>');
        txtfile := 'PaymentCreditIssue';
        // 15800  SMTPMailCodeUnit.CreateMessage('Orient Bell Limited.', 'donotreply@orientbell.com', 'tara.chand@orientbell.com', 'Payment & Credit Issue', '', TRUE);
        EmailAddressList.Add('tara.chand@orientbell.com');
        EmailMsg.Create(EmailAddressList, 'Order Fulfillment Details', BodyText, true, EmailCCList, EmailBccList);
        MailtoCCGLSetup.SetAutoCalcFields(MailtoCCGLSetup."50292 Report");
        Clear(TInstrm5);
        if MailtoCCGLSetup."50292 Report".HasValue then begin
            MailtoCCGLSetup."50292 Report".CreateInStream(TInstrm5);
            EmailMsg.AddAttachment(txtfile + '.xlsx', 'application/excel', TInstrm5);
        end;
        EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);

        /* IF ((EXISTS('C:\OrderFF\' + txtfile + '.xlsx'))) THEN BEGIN
            SMTPMailCodeUnit.AddAttachment('C:\OrderFF\' + txtfile + '.xlsx', txtfile + '.xlsx');
            SMTPMailCodeUnit.Send();
        END; */ // 15800 

    end;
}
