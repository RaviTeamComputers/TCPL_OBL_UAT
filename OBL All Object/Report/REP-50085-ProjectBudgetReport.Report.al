report 50085 "Project Budget Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = '.\ReportLayouts\ProjectBudgetReport.rdl';
    PreviewMode = PrintLayout;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem("Budget Master"; 50084)
        {
            CalcFields = "Expenditure Sum";
            RequestFilterFields = "No.";
            column(CompanyLogo; CompanyInformation.Picture)
            {
            }
            column(ReportHeadingCaption; ReportHeading)
            {
            }
            column(ProjectNameCaption; ProjectNameLbl)
            {
            }
            column(PreparedbyCaption; PreparedbyLbl)
            {
            }
            column(ApprovalCaption; ApprovalLbl)
            {
            }
            column(CaptainLbl; CaptainLbl)
            {
            }
            column(PositionCaption; PositionLbl)
            {
            }
            column(LimitCaption; LimitLbl)
            {
            }
            column(SignCaption; SignLbl)
            {
            }
            column(DtCaption; DtLbl)
            {
            }
            column(CEOCaption; CEOLbl)
            {
            }
            column(MDCaption; MDLbl)
            {
            }
            column(CEO1Caption; CEOLbl1)
            {
            }
            column(MD1Caption; MDLbl1)
            {
            }
            column(Auth1Caption; Auth1Lbl)
            {
            }
            column(Auth2Caption; Auth2Lbl)
            {
            }
            column(Auth3Caption; Auth3Lbl)
            {
            }
            column(Auth4Caption; Auth4Lbl)
            {
            }
            column(Auth5Caption; Auth5Lbl)
            {
            }
            column(Auth6Caption; Auth6Lbl)
            {
            }
            column(Auth7Caption; Auth7Lbl)
            {
            }
            column(Auth8Caption; Auth8Lbl)
            {
            }
            column(DateCaption; DateLbl)
            {
            }
            column(CapexNoCaption; CapexNoLbl)
            {
            }
            column(InvestmentCaption; InvestmentLbl)
            {
            }
            column(CapexPlanCaption; CapexPlanLbl)
            {
            }
            column(SupplementaryCaption; SupplementaryLbl)
            {
            }
            column(EstStartDateCaption; EstStartDateLbl)
            {
            }
            column(TypOfInvestCaption; TypOfInvestLbl)
            {
            }
            column(InvestmentClassCaption; InvestmentClassLbl)
            {
            }
            column(OperationUnitCaption; OperationUnitLbl)
            {
            }
            column(EstimatedCompDateCaption; EstimatedCompDateLbl)
            {
            }
            column(ExecutiveSummaryHeadingCaption; ExecutiveSummaryHeadingLbl)
            {
            }
            column(ExecutiveSummaryCaption; ExecutiveSummaryLbl)
            {
            }
            column(ProjectRationalHeadingCaption; ProjectRationalHeadingLbl)
            {
            }
            column(ProjectRationalCaption; ProjectRationalLbl)
            {
            }
            column(ProjectBudgetHeadingCaption; ProjectBudgetHeadingLbl)
            {
            }
            column(ProjectBudgetHeading2Caption; ProjectBudgetHeading2Lbl)
            {
            }
            column(ProjectBudgetCaption; ProjectBudgetLbl)
            {
            }
            column(NoCaption; NoLbl)
            {
            }
            column(ExpenditureCaption; ExpenditureLbl)
            {
            }
            column(EstimationINRCaption; EstimationINRLbl)
            {
            }
            column(PercentageCaption; "%Lbl")
            {
            }
            column(ExpenditureSumCaption; ExpenditureSUm)
            {
            }
            column(ContigencyCaption; ContigencyLbl)
            {
            }
            column(AFETotalCaption; AFETotalLbl)
            {
            }
            column(SpendingProfileHeadingCaption; SpendingProfileHeadingLbl)
            {
            }
            column(QuarterCaption; QuarterLbl)
            {
            }
            column(QSpendingCaption; QSpendingLbl)
            {
            }
            column(CumulativeCaption; CumulativeLbl)
            {
            }
            column(ProgressiveCaption; ProgressiveLbl)
            {
            }
            column(FinancialEvaCaption; FinancialEvaLbl)
            {
            }
            column(CapexModelCaption; CapexModelLbl)
            {
            }
            column(SumFinancialCaption; SumFinancialLbl)
            {
            }
            column(FinancialIndCaption; FinancialIndLbl)
            {
            }
            column(BaseCaseCaption; BaseCaseLbl)
            {
            }
            column(CapInvestCaption; CapInvestLbl)
            {
            }
            column(NPVCaption; NPVLbl)
            {
            }
            column(IRRCaption; IRRLbl)
            {
            }
            column(PackBackCaption; PackBackLbl)
            {
            }
            column(YearCaption; YearLbl)
            {
            }
            column(CompName; CompanyInformation.Name)
            {
            }
            column(CompPicture; CompanyInformation.Picture)
            {
            }
            column(CreatedBy_BudgetMaster1; "Budget Master"."Created By")
            {
            }
            column(CreatedBy_BudgetMaster; Username1)
            {
            }
            column(ProjectName_BudgetMaster; "Budget Master"."Project Name")
            {
            }
            column(CreatedDateTime_BudgetMaster; "Budget Master"."Created Date & Time")
            {
            }

            //17144
            column(No_BudgetMaster; "Budget Master"."Posting No.")
            {
            }

            //17144
            // column(ExecutiveSummary_BudgetMaster; TxtExecutiveSummary)
            // {
            // }

            //17144
            column(ExecutiveSummary_BudgetMaster; "Budget Master"."Executive Summary 1")
            {
            }
            column(ProjectRational_BudgetMaster; "Project Rational 1")
            {
            }

            //17144
            column(FinancialEvaluation_BudgetMaster; TxtFinancialEvaluation)
            {
            }
            column(TypeofInvestment_BudgetMaster; "Budget Master"."Type of Investment")
            {
            }
            column(InvestmentClass_BudgetMaster; "Budget Master"."Investment Class")
            {
            }
            column(OperationUnit_BudgetMaster; "Budget Master"."Operation Unit")
            {
            }
            column(EstimatedStartDate_BudgetMaster; "Budget Master"."Estimated Start Date")
            {
            }
            column(EstimatedCompletionDate_BudgetMaster; "Budget Master"."Estimated Completion Date")
            {
            }
            column(Supplementary_BudgetMaster; "Budget Master".Supplementary)
            {
            }
            column(InvestmentInINR_BudgetMaster; "Budget Master"."Investment (In INR)")
            {
            }
            column(IncludedInCapexPlan_BudgetMaster; "Budget Master"."Included In Capex Plan")
            {
            }
            column(CapitalInvestmentinINR_BudgetMaster; "Budget Master"."Capital Investment (in INR)")
            {
            }
            column(NPVInINR_BudgetMaster; "Budget Master"."NPV (In INR)")
            {
            }
            column(IRR_BudgetMaster; "Budget Master"."IRR%")
            {
            }
            column(ExpenditureSum_BudgetMaster; "Budget Master"."Expenditure Sum")
            {
            }
            column(PayBackPeriodInYears_BudgetMaster; "Budget Master"."Pay Back Period (In Years)")
            {
            }
            column(Authorization1_BudgetMaster; Authorization1)
            {
            }
            column(Authorization2_BudgetMaster; Authorization2)
            {
            }
            column(Authorization3_BudgetMaster; Authorization3)
            {
            }
            column(Authorization4_BudgetMaster; Authorization4)
            {
            }
            column(Authorization5_BudgetMaster; Authorization5)
            {
            }
            column(Authorization6_BudgetMaster; Authorization6)
            {
            }
            column(Authorization7_BudgetMaster; Authorization7)
            {
            }
            column(Authorization8_BudgetMaster; Authorization8)
            {
            }
            column(Authorization1Date_BudgetMaster; "Budget Master"."Authorization 1 Date")
            {
            }
            column(Authorization1Time_BudgetMaster; "Budget Master"."Authorization 1 Time")
            {
            }
            column(Authorization2Date_BudgetMaster; "Budget Master"."Authorization 2 Date")
            {
            }
            column(Authorization2Time_BudgetMaster; "Budget Master"."Authorization 2 Time")
            {
            }
            column(Authorization3Date_BudgetMaster; "Budget Master"."Authorization 3 Date")
            {
            }
            column(Authorization3Time_BudgetMaster; "Budget Master"."Authorization 3 Time")
            {
            }
            column(Authorization4Date_BudgetMaster; "Budget Master"."Authorization 4 Date")
            {
            }
            column(Authorization4Time_BudgetMaster; "Budget Master"."Authorization 4 Time")
            {
            }
            column(Authorization5Date_BudgetMaster; "Budget Master"."Authorization 5 Date")
            {
            }
            column(Authorization5Time_BudgetMaster; "Budget Master"."Authorization 5 Time")
            {
            }
            column(Authorization6Date_BudgetMaster; "Budget Master"."Authorization 6 Date")
            {
            }
            column(Authorization6Time_BudgetMaster; "Budget Master"."Authorization 6 Time")
            {
            }
            column(Authorization7Date_BudgetMaster; "Budget Master"."Authorization 7 Date")
            {
            }
            column(Authorization7Time_BudgetMaster; "Budget Master"."Authorization 7 Time")
            {
            }
            column(Authorization8Date_BudgetMaster; "Budget Master"."Authorization 8 Date")
            {
            }
            column(Authorization8Time_BudgetMaster; "Budget Master"."Authorization 8 Time")
            {
            }
            column(Contigency_BudgetMaster; "Budget Master".Contigency)
            {
            }
            column(AFETotal_BudgetMaster; "Budget Master"."AFE Total")
            {
            }
            dataitem("Project Budget"; 50115)
            {
                DataItemLink = "Document No." = FIELD("No."),
                               "Capex Request" = FIELD("Capex Request");
                DataItemTableView = WHERE(Type = CONST("Project Budget"));
                column(SNo_BudgetMasterLine; "Project Budget"."S. No.")
                {
                }
                column(ExpenditureElement_BudgetMasterLine; "Project Budget"."Expenditure Element")
                {
                }
                column(EstimationInINR_BudgetMasterLine; "Project Budget"."Estimation (In INR)")
                {
                }
                column(Percentage_BudgetMasterLine; "Project Budget".Percentage)
                {
                }
            }
            dataitem("Spending Profile per quarter"; 50115)
            {
                DataItemLink = "Document No." = FIELD("No."),
                               "Capex Request" = FIELD("Capex Request");
                DataItemTableView = WHERE(Type = CONST("Spending Profile per Quarter"));
                column(Year_SpendingProfileperquarter; "Spending Profile per quarter".Year)
                {
                }
                column(Quarter_SpendingProfileperquarter; "Spending Profile per quarter".Quarter)
                {
                }
                column(QuarterSpendingInINR_SpendingProfileperquarter; "Spending Profile per quarter"."Quarter Spending (In INR)")
                {
                }
                column(LineNo_SpendingProfileperquarter; "Spending Profile per quarter"."Line No.")
                {
                }
                column(CumulativeTotalInINR_SpendingProfileperquarter; "Spending Profile per quarter"."Cumulative Total (In INR)")
                {
                }
                column(Progressive_SpendingProfileperquarter; "Spending Profile per quarter"."Progressive (%)")
                {
                }
                dataitem("Approval Entry"; 454)
                {
                    DataItemLink = "Document No." = FIELD("Document No.");
                    DataItemTableView = SORTING("Table ID", "Document Type", "Document No.", "Sequence No.", "Record ID to Approve")
                                        WHERE("Table ID" = CONST(50084),
                                              "Comment Text" = FILTER(<> ''));
                    column(Seq; "Approval Entry"."Sequence No.")
                    {
                    }
                    column(SendID; "Approval Entry"."Sender ID")
                    {
                    }
                    column(ApprovID; "Approval Entry"."Approver ID")
                    {
                    }
                    column(LAstTImeStamp; "Approval Entry"."Last TimeStamp")
                    {
                    }
                    column(CommentText; "Approval Entry"."Comment Text")
                    {
                    }
                    column(CommentorName; UserSetup."User Name")
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        IF UserSetup.GET("Approval Entry"."Approver ID") THEN;
                    end;
                }
            }

            trigger OnAfterGetRecord()
            begin

                TxtFinancialEvaluation := "Budget Master".getFinancialEvaluation();
                //17144
                TxtExecutiveSummary := "Budget Master".getexecutivesummarynew("Budget Master");
                //is field m data nahi aa raha hai
                TxtProjectRational := "Budget Master".getProjectRational();


                AssignAuthUser();

                UserSetup.RESET;
                IF UserSetup.GET("Created By") THEN
                    Username1 := UserSetup."User Name";
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        CompanyInformation.GET();
        CompanyInformation.CALCFIELDS(Picture);
    end;

    var
        ReportHeading: Label 'Capex Projects Authorisation for Expenditure (AFE) Application';
        ProjectNameLbl: Label 'Project Name :';
        PreparedbyLbl: Label 'Prepared by :';
        DateLbl: Label 'Date :';
        CapexNoLbl: Label 'Capex Number (as per AFE Gateway) :';
        InvestmentLbl: Label 'Investment (INR Lakhs):';
        CapexPlanLbl: Label 'Included in Capex Plan :';
        SupplementaryLbl: Label 'Supplementary :';
        EstStartDateLbl: Label 'Estimated Start Date :';
        TypOfInvestLbl: Label 'Type of Investment                  (L /R /I /E /S ) :';
        InvestmentClassLbl: Label 'Investment Class :';
        OperationUnitLbl: Label 'Operating Unit                      (SKD, HSK, Dora or HO) :';
        EstimatedCompDateLbl: Label 'Estimated Completion Date:';
        ExecutiveSummaryHeadingLbl: Label '1.0. Executive Summary';
        ExecutiveSummaryLbl: Label 'Executive Summary';
        ProjectRationalHeadingLbl: Label '2.0. Project Rational ';
        ProjectRationalLbl: Label 'Tangible / Intangible Benefits from the Project OR Key Reasons for doing the Project';
        CompanyInformation: Record 79;
        UserSetup: Record 91;
        TxtExecutiveSummary: Text;
        TxtProjectRational: Text;
        TxtFinancialEvaluation: Text;
        ProjectBudgetHeadingLbl: Label '3.0. Project Budget and Spending Profile';
        ProjectBudgetHeading2Lbl: Label '(Contigency - A lump sum amount can be proposed)';
        ProjectBudgetLbl: Label '3.1 Project Budget';
        NoLbl: Label 'No';
        ExpenditureLbl: Label 'Expenditure Element';
        EstimationINRLbl: Label 'Estimation (INR)';
        "%Lbl": Label '%';
        ExpenditureSUm: Label 'Expenditure Sum ';
        ContigencyLbl: Label 'Contigency';
        AFETotalLbl: Label 'AFE Total';
        SpendingProfileHeadingLbl: Label '3.2 Spending Profile per Quarter';
        QuarterLbl: Label 'Quarter';
        QSpendingLbl: Label 'Quarter Spending (INR) ';
        CumulativeLbl: Label 'Cumulative Total (INR)';
        ProgressiveLbl: Label 'Progressive (%)';
        FinancialEvaLbl: Label '4.0. Financial Evaluation – (Only required for Improvement Projects)';
        CapexModelLbl: Label '4.1 Capex Model and Key Assumptions';
        SumFinancialLbl: Label '4.2 Summary of Financial Indicators';
        FinancialIndLbl: Label 'Financial Indicator';
        BaseCaseLbl: Label 'Base Case';
        CapInvestLbl: Label 'Capital Investment (INR)';
        NPVLbl: Label 'NPV (INR)';
        IRRLbl: Label 'IRR %';
        PackBackLbl: Label 'Pay Back Period (Years)';
        YearLbl: Label 'Year';
        ApprovalLbl: Label '5. Approvals';
        CaptainLbl: Label 'Caption';
        PositionLbl: Label 'Position';
        LimitLbl: Label 'Limits';
        SignLbl: Label 'Signature';
        DtLbl: Label 'Authorization Date';
        CEOLbl: Label 'CEO';
        MDLbl: Label 'MD / Chairman';
        CEOLbl1: Label 'After recommendation by COO + CFO';
        MDLbl1: Label 'After recommendation by CEO+CO';
        Auth1Lbl: Label 'Authorization 1';
        Auth2Lbl: Label 'Authorization 2';
        Auth3Lbl: Label 'Authorization 3';
        Auth4Lbl: Label 'Authorization 4';
        Auth5Lbl: Label 'Authorization 5';
        Auth6Lbl: Label 'Authorization 6';
        Auth7Lbl: Label 'Authorization 7';
        Auth8Lbl: Label 'Authorization 8';
        Authorization1: Code[50];
        Authorization2: Code[50];
        Authorization3: Code[50];
        Authorization4: Code[50];
        Authorization5: Code[50];
        Authorization6: Code[50];
        Authorization7: Code[50];
        Authorization8: Code[50];
        Username1: Text[50];
        BudgetMaster: Record 50084;

    local procedure AssignAuthUser()
    begin
        IF UserSetup.GET("Budget Master"."Authorization 1") THEN
            Authorization1 := UserSetup."User Name";
        IF UserSetup.GET("Budget Master"."Authorization 2") THEN
            Authorization2 := UserSetup."User Name";
        IF UserSetup.GET("Budget Master"."Authorization 3") THEN
            Authorization3 := UserSetup."User Name";
        IF UserSetup.GET("Budget Master"."Authorization 4") THEN
            Authorization4 := UserSetup."User Name";
        IF UserSetup.GET("Budget Master"."Authorization 5") THEN
            Authorization5 := UserSetup."User Name";
        IF UserSetup.GET("Budget Master"."Authorization 6") THEN
            Authorization6 := UserSetup."User Name";
        IF UserSetup.GET("Budget Master"."Authorization 7") THEN
            Authorization7 := UserSetup."User Name";
        IF UserSetup.GET("Budget Master"."Authorization 8") THEN
            Authorization8 := UserSetup."User Name";
    end;


}

