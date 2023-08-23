pageextension 50112 pageextension50112 extends "Cash Payment Voucher"
{

    //Unsupported feature: Property Modification (PageType) on ""Cash Payment Voucher"(Page 16576)".

    layout
    {
        modify("Location Code")
        {
            trigger OnLookup(var Text: Text): Boolean
            var
                UserLocation: Record "User Location";
                GenJnlTemplate1: Record "Gen. Journal Template";
            begin
                //Upgrade(+)
                UserLocation.RESET;
                UserLocation.SETFILTER(UserLocation."User ID", USERID);
                GenJnlTemplate1.RESET;
                GenJnlTemplate1.SETFILTER(GenJnlTemplate1.Name, rec."Journal Template Name");
                IF GenJnlTemplate1.FIND('-') THEN
                    IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::General THEN
                        UserLocation.SETFILTER(UserLocation."GJT General", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::Sales THEN
                    UserLocation.SETFILTER(UserLocation."GJT Sales", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::Purchases THEN
                    UserLocation.SETFILTER(UserLocation."GJT Purchases", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::"Cash Receipts" THEN
                    UserLocation.SETFILTER(UserLocation."GJT Cash Receipts", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::Payments THEN
                    UserLocation.SETFILTER(UserLocation."GJT Payments", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::Assets THEN
                    UserLocation.SETFILTER(UserLocation."GJT Assets", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::"TDS Adjustments" THEN
                    UserLocation.SETFILTER(UserLocation."GJT TDS Adjustments", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::LC THEN
                    UserLocation.SETFILTER(UserLocation."GJT LC", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::Receipts THEN
                    UserLocation.SETFILTER(UserLocation."GJT Receipts", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::JV THEN
                    UserLocation.SETFILTER(UserLocation."GJT JV", '%1', TRUE);
                IF GenJnlTemplate1.Type = GenJnlTemplate1.Type::StdPayments THEN
                    UserLocation.SETFILTER(UserLocation."GJT StdPayments", '%1', TRUE);

                IF UserLocation.FIND('-') THEN
                    IF PAGE.RUNMODAL(50003, UserLocation) = ACTION::LookupOK THEN
                        rec.VALIDATE("Location Code", UserLocation."Location Code");
            end;
        }

        moveafter("Document No."; "Location Code")
        /*  addafter("Control 51")
          {
              field(ShortcutDimCode3; ShortcutDimCode[3])
              {
                  CaptionClass = '1,2,3';
                  Caption = 'ShortcutDimCode[3]';
                  Visible = false;

                  trigger OnLookup(var Text: Text): Boolean
                  begin
                      LookupShortcutDimCode(3, ShortcutDimCode[3]);
                  end;

                  trigger OnValidate()
                  begin
                      ValidateShortcutDimCode(3, ShortcutDimCode[3]);
                  end;
              }
              field(ShortcutDimCode4; ShortcutDimCode[4])
              {
                  CaptionClass = '1,2,4';
                  Caption = 'ShortcutDimCode[4]';
                  Visible = false;

                  trigger OnLookup(var Text: Text): Boolean
                  begin
                      LookupShortcutDimCode(4, ShortcutDimCode[4]);
                  end;

                  trigger OnValidate()
                  begin
                      ValidateShortcutDimCode(4, ShortcutDimCode[4]);
                  end;
              }
              field(ShortcutDimCode5; ShortcutDimCode[5])
              {
                  CaptionClass = '1,2,5';
                  Caption = 'ShortcutDimCode[5]';
                  Visible = false;

                  trigger OnLookup(var Text: Text): Boolean
                  begin
                      LookupShortcutDimCode(5, ShortcutDimCode[5]);
                  end;

                  trigger OnValidate()
                  begin
                      ValidateShortcutDimCode(5, ShortcutDimCode[5]);
                  end;
              }
              field(ShortcutDimCode6; ShortcutDimCode[6])
              {
                  CaptionClass = '1,2,6';
                  Caption = 'ShortcutDimCode[6]';
                  Visible = false;

                  trigger OnLookup(var Text: Text): Boolean
                  begin
                      LookupShortcutDimCode(6, ShortcutDimCode[6]);
                  end;

                  trigger OnValidate()
                  begin
                      ValidateShortcutDimCode(6, ShortcutDimCode[6]);
                  end;
              }
              field(ShortcutDimCode7; ShortcutDimCode[7])
              {
                  CaptionClass = '1,2,7';
                  Caption = 'ShortcutDimCode[7]';
                  Visible = false;

                  trigger OnLookup(var Text: Text): Boolean
                  begin
                      LookupShortcutDimCode(7, ShortcutDimCode[7]);
                  end;

                  trigger OnValidate()
                  begin
                      ValidateShortcutDimCode(7, ShortcutDimCode[7]);
                  end;
              }
              field(ShortcutDimCode8; ShortcutDimCode[8])
              {
                  CaptionClass = '1,2,8';
                  Caption = 'ShortcutDimCode[8]';
                  Visible = false;

                  trigger OnLookup(var Text: Text): Boolean
                  begin
                      LookupShortcutDimCode(8, ShortcutDimCode[8]);
                  end;

                  trigger OnValidate()
                  begin
                      ValidateShortcutDimCode(8, ShortcutDimCode[8]);
                  end;
              }
          }*/ // 15578
        moveafter("Reason Code"; "Cheque No.", "Cheque Date")
    }

    actions
    {
        modify(Post)
        {
            trigger OnAfterAction()
            begin
                rec.TESTFIELD("Shortcut Dimension 1 Code");
            end;
        }
    }
}

