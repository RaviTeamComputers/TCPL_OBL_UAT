codeunit 50048 "TGT VS Achievement"
{
    trigger OnRun()
    begin
        SendToPCH; //--
        SendToZHorZM; //--
        //SendToCKA;
        SendToAll;

        // 15800 Current Not In Use as Per Discuss Laxman SendEmailSalesDetails;
        SendEmailSalesDetails;
        MESSAGE('mails sent!');
    end;

    var
        // 15800  SMTPSetup: Record 409;
        EmailObj: Codeunit Email;
        EmailMsg: codeunit "Email Message";
        EmailCCList: List of [Text];
        BodyText: Text;
        EmailAddressList: List of [Text];
        EmailBccList: list of [Text];
        GlbFromDate: Date;
        GlbToDate: Date;
        MatrixMaster: Record 50003;
        SalespersonPurchaser: Record 13;
        MatrixMaster2: Record 50003;
        // 15800  SMTPMailCodeUnit: Codeunit 400;
        ZHCode: Code[20];
        DescCode: Code[20];
        SalesTGTvsAchvmnt: Report 50033;
        EmailAddress: Text[100];
        Customer: Record 18;
        DescCode1: Code[20];
        RepCollection: Report 50100;
        TODTgtVsAch: Report 50154;
        EmailAddressZH: Text;
        RepEnterprise: Report 50103;
        textfile: array[5] of Text;
        filpath: array[5] of Text;
        Subject: Text;
        PendingOrders: Report 50014;
        TempBlob: Codeunit "Temp Blob";
        SOutsrm: OutStream;
        SInstrm: InStream;
        TInstrm3: InStream;
        TInstrm2: InStream;
        TInstrm1: InStream;

    local procedure SendToPCH()
    begin
        ///PCH
        CLEAR(textfile);
        CLEAR(filpath);
        MatrixMaster.RESET;
        MatrixMaster.SETCURRENTKEY("Mapping Type", "Type 1", "Type 2");
        MatrixMaster.ASCENDING;
        MatrixMaster.SETFILTER(ZH, '<>%1', '');
        //MatrixMaster.SETRANGE("Type 1", 'AGRA');
        MatrixMaster.SETFILTER(Description, '<>%1', '');
        // MatrixMaster.SetRange(ZH, '1111980');// 15800
        IF MatrixMaster.FINDSET THEN
            REPEAT
                Clear(EmailAddressList);
                Clear(EmailBccList);
                Clear(EmailCCList);
                Clear(BodyText);
                MatrixMaster2.RESET;
                MatrixMaster2.SETRANGE(PCH, MatrixMaster.PCH);
                MatrixMaster2.SETRANGE("Type 1", MatrixMaster."Type 1");
                IF MatrixMaster2.FINDFIRST THEN BEGIN
                    //------All 4 Reports---->>
                    //    CLEAR(SalespersonPurchaser);
                    IF SalespersonPurchaser.GET(MatrixMaster2.PCH) THEN;
                    //--1st Report--->>
                    CLEAR(SalesTGTvsAchvmnt);
                    SalesTGTvsAchvmnt.SETTABLEVIEW(MatrixMaster2);
                    /* 15800  textfile[1] := '-PCH-' + MatrixMaster2.PCH + 'Sales';
                    filpath[1] := 'C:\AutoMail\DailySalesReport\' + textfile[1] + '.xlsx';
                    SalesTGTvsAchvmnt.SAVEASEXCEL('C:\AutoMail\DailySalesReport\' + textfile[1] + '.xlsx'); */ // 15800
                    textfile[1] := '-PCH-' + MatrixMaster2.PCH + 'Sales' + '.xlsx';
                    Clear(TempBlob);
                    Clear(SInstrm);
                    Clear(SOutsrm);
                    Clear(MatrixMaster2."50033 Sales TGT Achv");
                    TempBlob.CreateInStream(SInstrm);
                    TempBlob.CreateOutStream(SOutsrm);
                    SalesTGTvsAchvmnt.SaveAs('', ReportFormat::Excel, SOutsrm);
                    Clear(SInstrm);
                    Clear(SOutsrm);
                    TempBlob.CreateInStream(SInstrm);
                    MatrixMaster2."50033 Sales TGT Achv".CreateOutStream(SOutsrm);
                    CopyStream(SOutsrm, SInstrm);

                    //--1st Report---<<

                    //--2nd Report--->>
                    CLEAR(RepCollection);
                    RepCollection.SETTABLEVIEW(MatrixMaster2);
                    textfile[2] := '-PCH-' + MatrixMaster2.PCH + 'Collection' + '.xlsx';
                    /* filpath[2] := 'C:\AutoMail\DailyCollection\' + textfile[2] + '.xlsx';
                    RepCollection.SAVEASEXCEL('C:\AutoMail\DailyCollection\' + textfile[2] + '.xlsx'); */ // 15800
                    Clear(TempBlob);
                    Clear(SInstrm);
                    Clear(SOutsrm);
                    Clear(MatrixMaster2."50100 Collection");
                    TempBlob.CreateInStream(SInstrm);
                    TempBlob.CreateOutStream(SOutsrm);
                    RepCollection.SaveAs('', ReportFormat::Excel, SOutsrm);
                    Clear(SInstrm);
                    Clear(SOutsrm);
                    TempBlob.CreateInStream(SInstrm);
                    MatrixMaster2."50100 Collection".CreateOutStream(SOutsrm);
                    CopyStream(SOutsrm, SInstrm);

                    //--2nd Report---<<

                    //--3rd Report--->> //MSVRN 060919 -->>
                    CLEAR(PendingOrders);
                    PendingOrders.SETTABLEVIEW(MatrixMaster2);
                    textfile[3] := '-PCH-' + MatrixMaster2.PCH + 'PendingOrders' + '.xlsx';
                    Clear(TempBlob);
                    Clear(SInstrm);
                    Clear(SOutsrm);
                    Clear(MatrixMaster2."50014 Pending Order");
                    TempBlob.CreateInStream(SInstrm);
                    TempBlob.CreateOutStream(SOutsrm);
                    PendingOrders.SaveAs('', ReportFormat::Excel, SOutsrm);
                    Clear(SInstrm);
                    Clear(SOutsrm);
                    TempBlob.CreateInStream(SInstrm);
                    MatrixMaster2."50014 Pending Order".CreateOutStream(SOutsrm);
                    CopyStream(SOutsrm, SInstrm);

                    /* filpath[3] := 'C:\AutoMail\PendingOrders\' + textfile[3] + '.xlsx';
                    PendingOrders.SAVEASEXCEL('C:\AutoMail\PendingOrders\' + textfile[3] + '.xlsx'); */ // 15800
                                                                                                        //--3rd Report---<<

                    //--4th Report--->>
                    /* Customer.RESET;
                    Customer.SETRANGE("PCH Code", MatrixMaster2.PCH);
                    IF Customer.FINDFIRST THEN BEGIN
                        CLEAR(TODTgtVsAch);
                        TODTgtVsAch.SETTABLEVIEW(Customer);
                        textfile[4] := '-PCH-' + MatrixMaster2.PCH + 'TgtVsAch';
                        filpath[4] := 'C:\AutoMail\TgtVsAch\' + textfile[4] + '.xlsx';
                        TODTgtVsAch.SAVEASEXCEL('C:\AutoMail\TgtVsAch\' + textfile[4] + '.xlsx');
                    END; */ // 15800 No Need to Save As Per Discuss Laxman and Pushpender Sir.
                            //--4th Report---<<
                            //------All 4 Reports----<<
                    MatrixMaster2.Modify();
                    //Send PCH Mail
                    Subject := MatrixMaster2."Type 1" + ' Territory_Daliy Sales Tracker for the month of ' + CalcMonth(DATE2DMY(TODAY - 1, 2)) + ', ' +
                                  FORMAT(DATE2DMY(TODAY - 1, 3)) + ' as on ' + FORMAT(TODAY - 1);
                    /* SMTPSetup.GET;
                    SMTPSetup.TESTFIELD("User ID");
                    CLEAR(SMTPMailCodeUnit); */ // 15800

                    // 15800 SMTPMailCodeUnit.AddCC('donotreply@orientbell.com');
                    EmailCCList.Add('donotreply@orientbell.com');

                    //--Body-->>
                    BodyText := ('Dear Mr. ' + SalespersonPurchaser.Name + ',');
                    BodyText += ('<br><br>');
                    BodyText += ('Please find attached Daily Sales Tracker_ ' + CalcMonth(DATE2DMY(TODAY - 1, 2)) + ', ' +
                                                FORMAT(DATE2DMY(TODAY - 1, 3)) + ' as on ' + FORMAT(TODAY - 1));
                    BodyText += ('<br><br>');
                    BodyText += ('Enclosed herewith below Tracker sheets:');
                    BodyText += ('<br>');
                    BodyText += ('1- Territory wise Sales Tracker <br>');

                    BodyText += ('2- Territory wise Collection Tracker <br>');

                    BodyText += ('3- Territory wise Pending Orders Tracker <br>');

                    BodyText += ('<br>');
                    BodyText += ('Thanks & Regards <br>');

                    BodyText += ('CSO Office');
                    BodyText += ('<br>');
                    BodyText += ('Orient Bell Ltd.');
                    //--Body--<<
                    MatrixMaster2.SetAutoCalcFields(MatrixMaster2."50033 Sales TGT Achv", MatrixMaster2."50014 Pending Order", MatrixMaster2."50100 Collection");
                    EmailAddressList.Add(SalespersonPurchaser."E-Mail");
                    // 15800 SMTPMailCodeUnit.CreateMessage('CSO Office - OBL', 'donotreply@orientbell.com', SalespersonPurchaser."E-Mail", Subject, '', TRUE);
                    EmailMsg.Create(EmailAddressList, Subject, BodyText, true, EmailCCList, EmailBccList);
                    Clear(TInstrm1);
                    MatrixMaster2."50033 Sales TGT Achv".CreateInStream(TInstrm1);
                    EmailMsg.AddAttachment('CAutoMailDailySalesReportSalesReport.xlsx', 'application/excel', TInstrm1);
                    Clear(TInstrm2);
                    MatrixMaster2."50100 Collection".CreateInStream(TInstrm2);
                    EmailMsg.AddAttachment('CAutoMailDailyCollectionCollectionReport.xlsx', 'application/excel', TInstrm2);
                    Clear(TInstrm3);
                    MatrixMaster2."50014 Pending Order".CreateInStream(TInstrm3);
                    EmailMsg.AddAttachment('CAutoMailPendingOrdersPendingOrders.xlsx', 'application/excel', TInstrm3);
                    EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);
                    /*  15800 IF (EXISTS(filpath[1])) THEN
                        SMTPMailCodeUnit.AddAttachment(filpath[1], filpath[1]);
                    IF (EXISTS(filpath[2])) THEN
                        SMTPMailCodeUnit.AddAttachment(filpath[2], filpath[2]);
                    IF (EXISTS(filpath[3])) THEN
                        SMTPMailCodeUnit.AddAttachment(filpath[3], filpath[3]);
                    IF (EXISTS(filpath[4])) THEN
                        SMTPMailCodeUnit.AddAttachment(filpath[4], filpath[4]);
                    SMTPMailCodeUnit.Send; */ // 15800
                    //MESSAGE('Sent');
                END;
            UNTIL MatrixMaster.NEXT = 0;
        ///PCH
    end;

    local procedure SendToZHorZM()
    begin
        /////ZH
        CLEAR(textfile);
        CLEAR(filpath);
        MatrixMaster.RESET;
        MatrixMaster.SETCURRENTKEY(ZH, "Sorting Order", PCH);
        MatrixMaster.ASCENDING;
        MatrixMaster.SETFILTER(ZH, '<>%1', '');
        MatrixMaster.SETFILTER(Description, '<>%1', '');
        // MatrixMaster.SetRange(ZH, '1111980'); // 15800 
        IF MatrixMaster.FINDSET THEN BEGIN
            REPEAT
                Clear(EmailAddressList);
                Clear(EmailCCList);
                Clear(EmailBccList);
                Clear(BodyText);
                IF DescCode <> MatrixMaster.ZH THEN BEGIN
                    DescCode := MatrixMaster.ZH;
                    MatrixMaster2.RESET;
                    MatrixMaster2.SETRANGE(ZH, MatrixMaster.ZH);
                    MatrixMaster2.SETRANGE(Description, MatrixMaster.Description);
                    IF MatrixMaster2.FINDFIRST THEN BEGIN
                        CLEAR(SalespersonPurchaser);
                        IF SalespersonPurchaser.GET(MatrixMaster.ZH) THEN;
                        //EmailAddressZH := SalespersonPurchaser."E-Mail";

                        //--1st Report--->>
                        CLEAR(SalesTGTvsAchvmnt);
                        SalesTGTvsAchvmnt.SETTABLEVIEW(MatrixMaster2);
                        /* textfile[1] := '-ZH-' + MatrixMaster2.ZH + 'Sales';
                        filpath[1] := 'C:\AutoMail\DailySalesReport\' + textfile[1] + '.xlsx';
                        SalesTGTvsAchvmnt.SAVEASEXCEL('C:\AutoMail\DailySalesReport\' + textfile[1] + '.xlsx') */ // 15800
                        Clear(TempBlob);
                        Clear(SInstrm);
                        Clear(SOutsrm);
                        Clear(MatrixMaster2."50033 Sales TGT Achv");
                        TempBlob.CreateInStream(SInstrm);
                        TempBlob.CreateOutStream(SOutsrm);
                        SalesTGTvsAchvmnt.SaveAs('', ReportFormat::Excel, SOutsrm);
                        Clear(SInstrm);
                        Clear(SOutsrm);
                        TempBlob.CreateInStream(SInstrm);
                        MatrixMaster2."50033 Sales TGT Achv".CreateOutStream(SOutsrm);
                        CopyStream(SOutsrm, SInstrm);

                        //--1st Report---<<

                        //--2nd Report--->>
                        CLEAR(RepCollection);
                        RepCollection.SETTABLEVIEW(MatrixMaster2);
                        /* textfile[2] := '-ZH-' + MatrixMaster2.ZH + 'Collection';
                        filpath[2] := 'C:\AutoMail\DailyCollection\' + textfile[2] + '.xlsx';
                        RepCollection.SAVEASEXCEL('C:\AutoMail\DailyCollection\' + textfile[2] + '.xlsx'); */ // 15800
                        Clear(TempBlob);
                        Clear(SInstrm);
                        Clear(SOutsrm);
                        Clear(MatrixMaster2."50100 Collection");
                        TempBlob.CreateInStream(SInstrm);
                        TempBlob.CreateOutStream(SOutsrm);
                        RepCollection.SaveAs('', ReportFormat::Excel, SOutsrm);
                        Clear(SInstrm);
                        Clear(SOutsrm);
                        TempBlob.CreateInStream(SInstrm);
                        MatrixMaster2."50100 Collection".CreateOutStream(SOutsrm);
                        CopyStream(SOutsrm, SInstrm);

                        //--2nd Report---<<

                        //--3rd Report--->> //MSVRN 060919 -->>
                        CLEAR(PendingOrders);
                        PendingOrders.SETTABLEVIEW(MatrixMaster2);
                        /* textfile[3] := '-ZH-' + MatrixMaster2.ZH + 'PendingOrders';
                        filpath[3] := 'C:\AutoMail\PendingOrders\' + textfile[3] + '.xlsx';
                        PendingOrders.SAVEASEXCEL('C:\AutoMail\PendingOrders\' + textfile[3] + '.xlsx'); */ // 15800
                        Clear(TempBlob);
                        Clear(SInstrm);
                        Clear(SOutsrm);
                        Clear(MatrixMaster2."50014 Pending Order");
                        TempBlob.CreateInStream(SInstrm);
                        TempBlob.CreateOutStream(SOutsrm);
                        PendingOrders.SaveAs('', ReportFormat::Excel, SOutsrm);
                        Clear(SInstrm);
                        Clear(SOutsrm);
                        TempBlob.CreateInStream(SInstrm);
                        MatrixMaster2."50014 Pending Order".CreateOutStream(SOutsrm);
                        CopyStream(SOutsrm, SInstrm);

                        //--3rd Report---<<

                        /*   //--4th Report--->>
                          Customer.RESET;
                          Customer.SETRANGE("Zonal Head", MatrixMaster2.ZH);
                          IF Customer.FINDFIRST THEN BEGIN
                              CLEAR(TODTgtVsAch);
                              TODTgtVsAch.SETTABLEVIEW(Customer);
                              textfile[4] := '-ZH-' + MatrixMaster2.ZH + 'TgtVsAch';
                              filpath[4] := 'C:\AutoMail\TgtVsAch\' + textfile[4] + '.xlsx';
                              TODTgtVsAch.SAVEASEXCEL('C:\AutoMail\TgtVsAch\' + textfile[4] + '.xlsx');
                          END;
                          //--4th Report---<< */ // 15800 No Need As Per discuss Laxman and Pushpender Sir.

                        //Send ZH Mail
                        Subject := MatrixMaster2.Description + ' Zone_Daliy Sales Tracker for the month of ' + CalcMonth(DATE2DMY(TODAY - 1, 2)) + ', ' +
                                  FORMAT(DATE2DMY(TODAY - 1, 3)) + ' as on ' + FORMAT(TODAY - 1);
                        /* SMTPSetup.GET;
                        SMTPSetup.TESTFIELD("User ID");
                        CLEAR(SMTPMailCodeUnit); */ // 15800

                        //SMTPMailCodeUnit.CreateMessage('CSO Office - OBL',SMTPSetup."User ID",'virendra.kumar@mindshell.info',Subject,'',TRUE);

                        // 15800  SMTPMailCodeUnit.AddCC('donotreply@orientbell.com');
                        EmailCCList.Add('donotreply@orientbell.com');

                        //--Body-->>
                        BodyText := ('Dear Mr. ' + SalespersonPurchaser.Name + ',');
                        BodyText += ('<br><br>');
                        BodyText += ('Please find attached Daily Sales Tracker_ ' + CalcMonth(DATE2DMY(TODAY - 1, 2)) + ', ' +
                                                    FORMAT(DATE2DMY(TODAY - 1, 3)) + ' as on ' + FORMAT(TODAY - 1));
                        BodyText += ('<br><br>');
                        BodyText += ('Enclosed herewith below Tracker sheets:');
                        BodyText += ('<br>');
                        BodyText += ('1- Zone wise Sales Tracker <br>');

                        BodyText += ('2- Zone wise Collection Tracker <br>');

                        BodyText += ('3- Zone wise Pending Orders <br>');

                        BodyText += ('<br>');
                        BodyText += ('Thanks & Regards <br>');

                        BodyText += ('CSO Office');
                        BodyText += ('<br>');
                        BodyText += ('Orient Bell Ltd.');
                        //--Body--<<
                        MatrixMaster2.SetAutoCalcFields(MatrixMaster2."50033 Sales TGT Achv", MatrixMaster2."50014 Pending Order", MatrixMaster2."50100 Collection");
                        EmailAddressList.Add(SalespersonPurchaser."E-Mail");
                        // 15800    SMTPMailCodeUnit.CreateMessage('CSO Office - OBL', 'donotreply@orientbell.com', SalespersonPurchaser."E-Mail", Subject, '', TRUE);//MSVRN open
                        EmailMsg.Create(EmailAddressList, Subject, BodyText, true, EmailCCList, EmailBccList);
                        Clear(TInstrm1);
                        MatrixMaster2."50033 Sales TGT Achv".CreateInStream(TInstrm1);
                        EmailMsg.AddAttachment('CAutoMailDailySalesReportSalesReport.xlsx', 'application/excel', TInstrm1);
                        Clear(TInstrm2);
                        MatrixMaster2."50100 Collection".CreateInStream(TInstrm2);
                        EmailMsg.AddAttachment('CAutoMailDailyCollectionCollectionReport.xlsx', 'application/excel', TInstrm2);
                        Clear(TInstrm3);
                        MatrixMaster2."50014 Pending Order".CreateInStream(TInstrm3);
                        EmailMsg.AddAttachment('CAutoMailPendingOrdersPendingOrders.xlsx', 'application/excel', TInstrm3);
                        EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);

                        /* IF (EXISTS(filpath[1])) THEN
                            SMTPMailCodeUnit.AddAttachment(filpath[1], filpath[1]);
                        IF (EXISTS(filpath[2])) THEN
                            SMTPMailCodeUnit.AddAttachment(filpath[2], filpath[2]);
                        IF (EXISTS(filpath[3])) THEN
                            SMTPMailCodeUnit.AddAttachment(filpath[3], filpath[3]);
                        IF (EXISTS(filpath[4])) THEN
                            SMTPMailCodeUnit.AddAttachment(filpath[4], filpath[4]);

                        SMTPMailCodeUnit.Send; */ // 15800
                    END;
                END;
            UNTIL MatrixMaster.NEXT = 0;
        END;
        //END;
        ////ZH
    end;

    /*  local procedure SendToCKA()
     begin
         ///PCH
         CLEAR(textfile);
         CLEAR(filpath);
         MatrixMaster.RESET;
         //MatrixMaster.SETCURRENTKEY("Mapping Type","Type 1","Type 2");
         //MatrixMaster.ASCENDING;
         //MatrixMaster.SETRANGE(Description, 'NC');
         //MatrixMaster.SETFILTER(ZH, '<>%1', '');
         //MatrixMaster.SETFILTER(Description, '<>%1', '');
         MatrixMaster.SETFILTER("Type 1", 'CKA');
         IF MatrixMaster.FINDSET THEN
             REPEAT
                 MatrixMaster2.RESET;
                 //MatrixMaster2.SETRANGE(PCH, MatrixMaster.PCH);
                 MatrixMaster2.SETRANGE("Type 1", MatrixMaster."Type 1");
                 IF MatrixMaster2.FINDFIRST THEN BEGIN
                     //------All 5 Reports---->>
                     CLEAR(SalespersonPurchaser);
                     IF SalespersonPurchaser.GET(MatrixMaster2.PCH) THEN;
                     //--1st Report--->>
                     CLEAR(SalesTGTvsAchvmnt);
                     SalesTGTvsAchvmnt.SETTABLEVIEW(MatrixMaster2);
                     textfile[1] := 'SalesTGTvsAchmt';//'-PCH-'+MatrixMaster2.PCH+'Sales';
                     filpath[1] := 'C:\AutoMail\DailySalesReport\' + textfile[1] + '.xlsx';
                     SalesTGTvsAchvmnt.SAVEASEXCEL('C:\AutoMail\DailySalesReport\' + textfile[1] + '.xlsx');
                     //--1st Report---<<

                     //--2nd Report--->>
                     CLEAR(RepCollection);
                     RepCollection.SETTABLEVIEW(MatrixMaster2);
                     textfile[2] := 'Collection';//'-PCH-' + MatrixMaster2.PCH + 'Collection';
                     filpath[2] := 'C:\AutoMail\DailyCollection\' + textfile[2] + '.xlsx';
                     RepCollection.SAVEASEXCEL('C:\AutoMail\DailyCollection\' + textfile[2] + '.xlsx');
                     //--2nd Report---<<

                     //--3rd Report--->>
                     Customer.RESET;
                     Customer.SETFILTER("Customer Type", 'CKA');
                     IF Customer.FINDFIRST THEN BEGIN
                         CLEAR(TODTgtVsAch);
                         TODTgtVsAch.SETTABLEVIEW(Customer);
                         textfile[3] := 'TODTgtVsAch';//'-PCH-' + MatrixMaster2.PCH+'TgtVsAch';
                         filpath[3] := 'C:\AutoMail\TgtVsAch\' + textfile[3] + '.xlsx';
                         TODTgtVsAch.SAVEASEXCEL('C:\AutoMail\TgtVsAch\' + textfile[3] + '.xlsx');
                     END;
                     //--3rd Report---<<

                     //--4rd Report--->>
                     CLEAR(RepEnterprise);
                     //RepEnterprise.SETTABLEVIEW(Customer);
                     textfile[4] := 'EnterpriseReport';
                     filpath[4] := 'C:\AutoMail\Enterprise\' + textfile[4] + '.xlsx';
                     RepEnterprise.SAVEASEXCEL('C:\AutoMail\Enterprise\' + textfile[4] + '.xlsx');
                     //--4rd Report---<<
                     /*
                     //--5th Report--->> //MSVRN 060919 -->>
                       CLEAR(PendingOrders);
                       PendingOrders.SETTABLEVIEW(MatrixMaster2);
                       //textfile[3] := '-PCH-'+MatrixMaster2.PCH+'PendingOrders';
                       textfile[5] := 'PendingOrders';
                       filpath[5] := 'C:\AutoMail\PendingOrders\'+textfile[5]+'.xlsx';
                       PendingOrders.SAVEASEXCEL('C:\AutoMailPendingOrders\'+textfile[5]+'.xlsx');
                     //--5th Report---<<
                     */
    //------All 5 Reports----<<

    //Send PCH Mail
    /*  Subject := MatrixMaster2."Type 1" + ' Territory_Daliy Sales Tracker for the month of ' + CalcMonth(DATE2DMY(TODAY - 1, 2)) + ', ' +
                    FORMAT(DATE2DMY(TODAY - 1, 3)) + ' as on ' + FORMAT(TODAY - 1);
      SMTPSetup.GET;
      SMTPSetup.TESTFIELD("User ID");
      CLEAR(SMTPMailCodeUnit);

      //SMTPMailCodeUnit.CreateMessage('CSO Office - OBL',SMTPSetup."User ID",SalespersonPurchaser."E-Mail",Subject,'',TRUE);//MSVRN open
      SMTPMailCodeUnit.CreateMessage('CSO Office - OBL', 'donotreply@orientbell.com', 'donotreply@orientbell.com', Subject, '', TRUE);

      SMTPMailCodeUnit.AddCC('donotreply@orientbell.com');
      //SMTPMailCodeUnit.AddCC('bs.negi@orientbell.com'); //BS Negi

      //--Body-->>
      SMTPMailCodeUnit.AppendBody('Dear Mr. Manish Verma,');
      SMTPMailCodeUnit.AppendBody('<br><br>');
      SMTPMailCodeUnit.AppendBody('Please find attached Daily Sales Tracker_ ' + CalcMonth(DATE2DMY(TODAY - 1, 2)) + ', ' +
                                  FORMAT(DATE2DMY(TODAY - 1, 3)) + ' as on ' + FORMAT(TODAY - 1));
      SMTPMailCodeUnit.AppendBody('<br><br>');
      SMTPMailCodeUnit.AppendBody('Enclosed herewith below Tracker sheets:');
      SMTPMailCodeUnit.AppendBody('<br>');
      SMTPMailCodeUnit.AppendBody('1- Territory wise Sales Tracker');
      SMTPMailCodeUnit.AppendBody('<br>');
      SMTPMailCodeUnit.AppendBody('2- Collection Tracker ');
      SMTPMailCodeUnit.AppendBody('<br>');
      //SMTPMailCodeUnit.AppendBody('3- AOP Target Vs Achvmt Tracker');
      SMTPMailCodeUnit.AppendBody('<br>');
      SMTPMailCodeUnit.AppendBody('3- Enterprise Tracker ');
      SMTPMailCodeUnit.AppendBody('<br><br>');
      SMTPMailCodeUnit.AppendBody('Thanks & Regards ');
      SMTPMailCodeUnit.AppendBody('<br>');
      SMTPMailCodeUnit.AppendBody('CSO Office');
      SMTPMailCodeUnit.AppendBody('<br>');
      SMTPMailCodeUnit.AppendBody('Orient Bell Ltd.');
      //--Body--<<

      IF (EXISTS(filpath[1])) THEN
          SMTPMailCodeUnit.AddAttachment(filpath[1], filpath[1]);
      IF (EXISTS(filpath[2])) THEN
          SMTPMailCodeUnit.AddAttachment(filpath[2], filpath[2]);
      IF (EXISTS(filpath[3])) THEN
          SMTPMailCodeUnit.AddAttachment(filpath[3], filpath[3]);
      IF (EXISTS(filpath[4])) THEN
          SMTPMailCodeUnit.AddAttachment(filpath[4], filpath[4]);
      IF (EXISTS(filpath[5])) THEN
          SMTPMailCodeUnit.AddAttachment(filpath[5], filpath[5]);
      SMTPMailCodeUnit.Send;
      //MESSAGE('Sent');
  END;
UNTIL MatrixMaster.NEXT = 0;*/

    /*
    CLEAR(textfile);
    CLEAR(filpath);
    CLEAR(RepEnterprise);
    //RepEnterprise.SETTABLEVIEW(Customer);
    textfile[4] := 'EnterpriseReport';
    filpath[4] := 'C:\AutoMail\Enterprise\' + textfile[4] + '.xlsx';
    RepEnterprise.SAVEASEXCEL('C:\AutoMail\Enterprise\' + textfile[4] + '.xlsx');

    SMTPSetup.GET;
    SMTPSetup.TESTFIELD("User ID");
    CLEAR(SMTPMailCodeUnit);
    {SMTPMailCodeUnit.CreateMessage('Orient Bell Ltd', SMTPSetup."User ID", 'manish.verma@orientbell.com',
                                    'Enterprise Report','',TRUE);}

    SMTPMailCodeUnit.CreateMessage('Orient Bell Ltd', SMTPSetup."User ID", 'kulbhushan.sharma@orientbell.com',
                                    'Enterprise Report','',TRUE);

    //--Body-->>
      SMTPMailCodeUnit.AppendBody('Dear Mr. Manish Verma,');
      SMTPMailCodeUnit.AppendBody('<br><br>');
      SMTPMailCodeUnit.AppendBody('Please find attached Daily Sales Tracker_ ' + CalcMonth(DATE2DMY(TODAY - 1, 2)) + ', ' +
                                  FORMAT(DATE2DMY(TODAY - 1, 3)) + ' as on ' + FORMAT(TODAY - 1));
      SMTPMailCodeUnit.AppendBody('<br><br>');
      SMTPMailCodeUnit.AppendBody('Enclosed herewith below Tracker sheets:');
      SMTPMailCodeUnit.AppendBody('<br>');
      SMTPMailCodeUnit.AppendBody('1- Territory wise Sales Tracker <br>');
      //SMTPMailCodeUnit.AppendBody('<br>');
      SMTPMailCodeUnit.AppendBody('2- Territory wise Collection Tracker <br>');
      //SMTPMailCodeUnit.AppendBody('<br>');
      SMTPMailCodeUnit.AppendBody('3- AOP Target Vs Achvmt Tracker <br>');
      SMTPMailCodeUnit.AppendBody('<br>');
      SMTPMailCodeUnit.AppendBody('Thanks & Regards <br>');
      //SMTPMailCodeUnit.AppendBody('<br>');
      SMTPMailCodeUnit.AppendBody('IT Department');
      SMTPMailCodeUnit.AppendBody('<br>');
      SMTPMailCodeUnit.AppendBody('Orient Bell Ltd.');
    //--Body--<<
    */

    /* end;
  */
    procedure SendToAll()
    var
        GLSetup: Record "General Ledger Setup";
    begin
        Clear(EmailAddressList);
        Clear(EmailCCList);
        Clear(EmailBccList);
        Clear(BodyText);
        GLSetup.Get();
        CLEAR(textfile);
        CLEAR(filpath);
        //--1st Report--->>

        SLEEP(200);
        CLEAR(SalesTGTvsAchvmnt);
        /* textfile[1] := 'SalesReport';
        filpath[1] := 'C:\AutoMail\DailySalesReport\' + textfile[1] + '.xlsx';
        SalesTGTvsAchvmnt.SAVEASEXCEL('C:\AutoMail\DailySalesReport\' + textfile[1] + '.xlsx'); */ // 15800 
        Clear(TempBlob);
        Clear(SInstrm);
        Clear(SOutsrm);
        Clear(GLSetup."50033 Report");
        TempBlob.CreateInStream(SInstrm);
        TempBlob.CreateOutStream(SOutsrm);
        SalesTGTvsAchvmnt.SaveAs('', ReportFormat::Excel, SOutsrm);
        Clear(SInstrm);
        Clear(SOutsrm);
        TempBlob.CreateInStream(SInstrm);
        GLSetup."50033 Report".CreateOutStream(SOutsrm);
        CopyStream(SOutsrm, SInstrm);

        //--1st Report---<<
        SLEEP(100);
        //--2nd Report--->>
        CLEAR(RepCollection);
        /* textfile[2] := 'CollectionReport';
        filpath[2] := 'C:\AutoMail\DailyCollection\' + textfile[2] + '.xlsx';
        RepCollection.SAVEASEXCEL('C:\AutoMail\DailyCollection\' + textfile[2] + '.xlsx'); */ // 15800
        Clear(TempBlob);
        Clear(SInstrm);
        Clear(SOutsrm);
        Clear(GLSetup."50100 Report");
        TempBlob.CreateInStream(SInstrm);
        TempBlob.CreateOutStream(SOutsrm);
        RepCollection.SaveAs('', ReportFormat::Excel, SOutsrm);
        Clear(SInstrm);
        Clear(SOutsrm);
        TempBlob.CreateInStream(SInstrm);
        GLSetup."50100 Report".CreateOutStream(SOutsrm);
        CopyStream(SOutsrm, SInstrm);

        //--2nd Report---<<
        //SLEEP(1000);

        //--3rd Report-->> //MSVRN 060919
        CLEAR(PendingOrders);
        /* textfile[3] := 'PendingOrders';
        filpath[3] := 'C:\AutoMail\PendingOrders\' + textfile[3] + '.xlsx';
        PendingOrders.SAVEASEXCEL('C:\AutoMail\PendingOrders\' + textfile[3] + '.xlsx'); */ // 15800
        Clear(TempBlob);
        Clear(SInstrm);
        Clear(SOutsrm);
        Clear(GLSetup."50014 Report");
        TempBlob.CreateInStream(SInstrm);
        TempBlob.CreateOutStream(SOutsrm);
        PendingOrders.SaveAs('', ReportFormat::Excel, SOutsrm);
        Clear(SInstrm);
        Clear(SOutsrm);
        TempBlob.CreateInStream(SInstrm);
        GLSetup."50014 Report".CreateOutStream(SOutsrm);
        CopyStream(SOutsrm, SInstrm);
        //--3rd Report--<<
        GLSetup.Modify();
        SLEEP(1000);

        //--4th Report--->>
        /*  CLEAR(TODTgtVsAch);
         textfile[4] := 'TGTTgtVsAch';
         filpath[4] := 'C:\AutoMail\TgtVsAch\' + textfile[4] + '.xlsx';
         TODTgtVsAch.SAVEASEXCEL('C:\AutoMail\TgtVsAch\' + textfile[4] + '.xlsx');
         //--4th Report---<< */ // 15800 No Need As Per Discuss Laxman and Pushpender Sir
        SLEEP(1000);
        ///////------<<<<<<<<<<<<<<<<<<

        Subject := 'Sales Territory_Daliy Sales Tracker for the month of ' + CalcMonth(DATE2DMY(TODAY - 1, 2)) + ', ' +
                     FORMAT(DATE2DMY(TODAY - 1, 3)) + ' as on ' + FORMAT(TODAY - 1); //=today()-1

        /* SMTPSetup.GET;
        SMTPSetup.TESTFIELD("User ID");
        CLEAR(SMTPMailCodeUnit); */ // 15800

        EmailCCList.Add('aditya.gupta@orientbell.com');
        EmailCCList.Add('alok.agarwal@orientbell.com');
        EmailCCList.Add('himanshu.jindal@orientbell.com');
        EmailCCList.Add('sandeep.jhanwar@orientbell.com');
        EmailCCList.Add('amit.gupta@orientbell.com');
        EmailCCList.Add('pushpender.kumar@orientbell.com');
        EmailCCList.Add('bs.negi@orientbell.com');
        EmailCCList.Add('amit.goel@orientbell.com');
        EmailCCList.Add('sujeet.singh@orientbell.com');
        EmailCCList.Add('jegatheeswaran.palsamy@orientbell.com');
        EmailCCList.Add('donotreply@orientbell.com');

        //SMTPMailCodeUnit.AddBCC('virendra.kumar@mindshell.info');
        //--Body-->>
        BodyText := ('Dear Sir,');
        BodyText += ('<br><br>');
        BodyText += ('Please find attached Daily Sales Tracker_ ' + CalcMonth(DATE2DMY(TODAY - 1, 2)) + ', ' +
                                    FORMAT(DATE2DMY(TODAY - 1, 3)) + ' as on ' + FORMAT(TODAY - 1));
        BodyText += ('<br><br>');
        BodyText += ('Enclosed herewith below Tracker sheets:');
        BodyText += ('<br>');
        BodyText += ('1- Territory wise Sales Tracker <br>');

        BodyText += ('2- Territory wise Collection Tracker <br>');

        BodyText += ('3- Territory wise Pending Orders Tracker <br>');

        BodyText += ('<br>');
        BodyText += ('Thanks & Regards <br>');

        BodyText += ('CSO Office');
        BodyText += ('<br>');
        BodyText += ('Orient Bell Ltd.');
        //--Body--<<
        EmailAddressList.Add('pinaki.nandy@orientbell.com');
        // 15800  SMTPMailCodeUnit.CreateMessage('CSO Office - OBL', 'donotreply@orientbell.com', 'pinaki.nandy@orientbell.com', Subject, '', TRUE);

        EmailMsg.Create(EmailAddressList, Subject, BodyText, true, EmailCCList, EmailBccList);

        GLSetup.SetAutoCalcFields(GLSetup."50014 Report", GLSetup."50033 Report", GLSetup."50100 Report");
        Clear(TInstrm1);
        GLSetup."50033 Report".CreateInStream(TInstrm1);
        EmailMsg.AddAttachment('CAutoMailDailySalesReportSalesReport.xlsx', 'application/excel', TInstrm1);
        Clear(TInstrm2);
        GLSetup."50100 Report".CreateInStream(TInstrm2);
        EmailMsg.AddAttachment('CAutoMailDailyCollectionCollectionReport.xlsx', 'application/excel', TInstrm2);
        Clear(TInstrm3);
        GLSetup."50014 Report".CreateInStream(TInstrm3);
        EmailMsg.AddAttachment('CAutoMailPendingOrdersPendingOrders.xlsx', 'application/excel', TInstrm3);
        EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);

        /*  IF (EXISTS(filpath[1])) THEN
             SMTPMailCodeUnit.AddAttachment(filpath[1], filpath[1]);
         IF (EXISTS(filpath[2])) THEN
             SMTPMailCodeUnit.AddAttachment(filpath[2], filpath[2]);
         IF (EXISTS(filpath[3])) THEN
             SMTPMailCodeUnit.AddAttachment(filpath[3], filpath[3]);
         IF (EXISTS(filpath[4])) THEN
             SMTPMailCodeUnit.AddAttachment(filpath[4], filpath[4]);

         SMTPMailCodeUnit.Send; */ // 15800

        //END;
        ////---Enterprise--<<
    end;

    local procedure CalcMonth(Month: Integer) MonthText: Text[10]
    begin
        CASE Month OF
            1:
                MonthText := 'Jan';
            2:
                MonthText := 'Feb';
            3:
                MonthText := 'Mar';
            4:
                MonthText := 'April';
            5:
                MonthText := 'May';
            6:
                MonthText := 'June';
            7:
                MonthText := 'July';
            8:
                MonthText := 'Aug';
            9:
                MonthText := 'Sep';
            10:
                MonthText := 'Oct';
            11:
                MonthText := 'Nov';
            12:
                MonthText := 'Dec';
        END;
    end;

    // local procedure SendEmailSalesDetails()
    // var
    //     rptSalesDetails: Report 50069;
    //     // 15800  SMTPMail: Codeunit 400;
    //     filePath: Text;
    //     fileName: Text;
    //     intYear: Integer;
    //     dtfrom: Date;
    //     dtTo: Date;
    // begin
    //     //Keshav05Nov2020>>
    //     /* intYear := 0;
    //      dtfrom := 0D;
    //      dtTo := 0D;
    //      filePath := '';
    //      fileName := '';
    //      filePath := 'C:\AutoMail\NPDOrderBookingandDespatch\';
    //      fileName := 'NPDOrderBookingandDespatch' + FORMAT(TODAY) + '.xlsx';

    //      IF DATE2DMY(TODAY, 2) < 4 THEN
    //          intYear := DATE2DMY(TODAY, 3) - 1
    //      ELSE
    //          intYear := DATE2DMY(TODAY, 3);

    //      dtfrom := DMY2DATE(1, 4, intYear);
    //      dtTo := TODAY;
    //      //MESSAGE('%1..%2',dtfrom,dtTo);

    //      CLEAR(rptSalesDetails);
    //      rptSalesDetails.SetReportFilter(dtfrom, dtTo);
    //      rptSalesDetails.SAVEASEXCEL(filePath + fileName);
    //      COMMIT;
    //      CLEAR(SMTPMail);
    //      IF SMTPSetup.FINDFIRST THEN;
    //      SMTPMail.CreateMessage('Orient Bell Limited', 'donotreply@orientbell.com', 'santosh.upadhyay@orientbell.com', 'NPD Order Booking and Despatch', '', TRUE);
    //      SMTPMail.AddCC('donotreply@orientbell.com');
    //      SMTPMail.AddCC('robin.samuel@orientbell.com');
    //      SMTPMail.AddCC('rachit.vij@orientbell.com');
    //      SMTPMail.AddCC('divya.chauhan@orientbell.com');
    //      SMTPMail.AppendBody('Dear Sir,');
    //      SMTPMail.AppendBody('<br><br>');
    //      SMTPMail.AppendBody('Please find attached NPD Order Booking and Despatch');
    //      SMTPMail.AppendBody('<br><br>');
    //      SMTPMail.AppendBody('Orient Bell Limited <br>');
    //      SMTPMail.AppendBody('Iris House, 16 Business Center, Nangal Raya <br>');
    //      SMTPMail.AppendBody('New Delhi 110046, India <br>');
    //      SMTPMail.AppendBody('Tel. +91 11 4711 9100 <br>');
    //      SMTPMail.AppendBody('Fax. +91 11 2852 1273 <br>');
    //      //--Body--<<

    //      //Attachment>>
    //      IF EXISTS(filePath + fileName) THEN
    //          SMTPMail.AddAttachment(filePath + fileName, fileName);

    //      //Attachment<<
    //      SMTPMail.Send;
    //      //Keshav05Nov2020<< */ // 15800 Need to Ask Laxman Sir and Open.
    // end;
    local procedure SendEmailSalesDetails()
    var
        rptSalesDetails: Report 50069;
        // 15800  SMTPMail: Codeunit 400;
        filePath: Text;
        fileName: Text;
        intYear: Integer;
        dtfrom: Date;
        dtTo: Date;
        ROutStm: OutStream;
        RInstrm: InStream;
        TempBlob: Codeunit "Temp Blob";
    begin
        Clear(EmailAddressList);
        Clear(EmailCCList);
        Clear(BodyText);
        //Keshav05Nov2020>>
        intYear := 0;
        dtfrom := 0D;
        dtTo := 0D;
        filePath := '';
        fileName := '';
        filePath := 'C:\AutoMail\NPDOrderBookingandDespatch\';
        fileName := 'NPDOrderBookingandDespatch' + FORMAT(TODAY) + '.xlsx';

        IF DATE2DMY(TODAY, 2) < 4 THEN
            intYear := DATE2DMY(TODAY, 3) - 1
        ELSE
            intYear := DATE2DMY(TODAY, 3);

        dtfrom := DMY2DATE(1, 4, intYear);
        dtTo := TODAY;
        //MESSAGE('%1..%2',dtfrom,dtTo);

        CLEAR(rptSalesDetails);
        TempBlob.CreateOutStream(ROutStm);
        rptSalesDetails.SetReportFilter(dtfrom, dtTo);
        rptSalesDetails.SaveAs('', ReportFormat::Excel, ROutStm);

        // 15800 rptSalesDetails.SAVEASEXCEL(filePath + fileName);
        COMMIT;
        //  SMTPMail.CreateMessage('Orient Bell Limited', 'donotreply@orientbell.com', 'santosh.upadhyay@orientbell.com', 'NPD Order Booking and Despatch', '', TRUE);
        EmailCCList.Add('donotreply@orientbell.com');
        EmailCCList.Add('robin.samuel@orientbell.com');
        EmailCCList.Add('rachit.vij@orientbell.com');
        EmailCCList.Add('divya.chauhan@orientbell.com');
        BodyText := ('Dear Sir,');
        BodyText += ('<br><br>');
        BodyText += ('Please find attached NPD Order Booking and Despatch');
        BodyText += ('<br><br>');
        BodyText += ('Orient Bell Limited <br>');
        BodyText += ('Iris House, 16 Business Center, Nangal Raya <br>');
        BodyText += ('New Delhi 110046, India <br>');
        BodyText += ('Tel. +91 11 4711 9100 <br>');
        BodyText += ('Fax. +91 11 2852 1273 <br>');
        EmailAddressList.Add('santosh.upadhyay@orientbell.com');
        //--Body--<<
        EmailMsg.Create(EmailAddressList, 'NPD Order Booking and Despatch', BodyText, true, EmailCCList, EmailBccList);
        TempBlob.CreateInStream(RInstrm);
        if TempBlob.HasValue() then
            EmailMsg.AddAttachment(fileName, 'application/excel', RInstrm);
        EmailObj.Send(EmailMsg, Enum::"Email Scenario"::Default);
        //Attachment>>
        // IF EXISTS(filePath + fileName) THEN
        //     SMTPMail.AddAttachment(filePath + fileName, fileName);

        // //Attachment<<
        // SMTPMail.Send;
        //Keshav05Nov2020<< */ // 15800 Need to Ask Laxman Sir and Open.
    end;


}
