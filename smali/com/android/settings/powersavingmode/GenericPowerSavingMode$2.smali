.class Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;
.super Landroid/preference/Preference;
.source "GenericPowerSavingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

.field final synthetic val$isEnableAutoPowerMode:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    iput-object p3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->val$isEnableAutoPowerMode:Ljava/lang/Boolean;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 126
    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->val$isEnableAutoPowerMode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    const v3, 0x7f0e12f7

    invoke-virtual {v2, v3}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "mDescription":Ljava/lang/String;
    :goto_0
    const v2, 0x7f0d03b9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 135
    .local v1, "mDescriptionTextView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void

    .line 128
    .end local v0    # "mDescription":Ljava/lang/String;
    .end local v1    # "mDescriptionTextView":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    # getter for: Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->access$300(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    # getter for: Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->access$300(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    const v3, 0x7f0e12f4

    invoke-virtual {v2, v3}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mDescription":Ljava/lang/String;
    goto :goto_0

    .line 132
    .end local v0    # "mDescription":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    const v4, 0x7f0e12f5

    invoke-virtual {v3, v4}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    const v4, 0x7f0e12f6

    invoke-virtual {v3, v4}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mDescription":Ljava/lang/String;
    goto :goto_0
.end method
