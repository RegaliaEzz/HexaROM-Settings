.class public Lcom/android/settings/DataUsageSummary$LimitEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitEditorFragment"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5040
    new-instance v0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5038
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    .line 5042
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5052
    :cond_0
    :goto_0
    return-void

    .line 5044
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5045
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "template"

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5047
    sget-object v1, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5048
    sget-object v1, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 5049
    sget-object v1, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 5050
    sget-object v1, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->dialog:Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "limitEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 5065
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 5066
    .local v9, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/android/settings/DataUsageSummary;

    .line 5067
    .local v7, "target":Lcom/android/settings/DataUsageSummary;
    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {v7}, Lcom/android/settings/DataUsageSummary;->access$400(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v5

    .line 5069
    .local v5, "editor":Lcom/android/settings/net/NetworkPolicyEditor;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5070
    .local v8, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 5072
    .local v10, "dialogInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040094

    const/4 v3, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 5073
    .local v15, "view":Landroid/view/View;
    const v2, 0x7f0d0184

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    .line 5075
    .local v4, "bytesPicker":Landroid/widget/NumberPicker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "template"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkTemplate;

    .line 5076
    .local v6, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v6}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v16

    .line 5077
    .local v16, "warningBytes":J
    invoke-virtual {v5, v6}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v12

    .line 5080
    .local v12, "limitBytes":J
    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "inputType=YearDateTime_edittext"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 5081
    const/4 v2, 0x6

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 5083
    const v14, 0x19000

    .line 5084
    .local v14, "maximum_limit":I
    invoke-virtual {v4, v14}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 5087
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_1

    .line 5088
    const-wide/32 v2, 0x100000

    div-long v2, v16, v2

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 5093
    :goto_0
    const-wide/32 v2, 0x100000

    div-long v2, v12, v2

    long-to-int v11, v2

    .line 5094
    .local v11, "limit_mb":I
    if-le v11, v14, :cond_2

    .line 5095
    invoke-virtual {v4, v14}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 5100
    :goto_1
    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v2

    if-le v2, v11, :cond_0

    .line 5101
    invoke-virtual {v4, v11}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 5102
    invoke-virtual {v4, v11}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 5107
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 5108
    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v18, 0x7f0a0102

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 5110
    const v2, 0x7f0e0c99

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5111
    invoke-virtual {v8, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5113
    const v18, 0x7f0e0c97

    new-instance v2, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$LimitEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V

    move/from16 v0, v18

    invoke-virtual {v8, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5128
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 5090
    .end local v11    # "limit_mb":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    goto :goto_0

    .line 5097
    .restart local v11    # "limit_mb":I
    :cond_2
    invoke-virtual {v4, v11}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1
.end method
