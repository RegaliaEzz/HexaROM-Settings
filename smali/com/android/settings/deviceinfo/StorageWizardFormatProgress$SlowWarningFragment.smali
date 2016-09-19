.class public Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;
.super Landroid/app/DialogFragment;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlowWarningFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 210
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 214
    .local v4, "target":Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
    # invokes: Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getDiskDescription()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->access$300(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "descrip":Ljava/lang/String;
    # invokes: Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getGenericDiskDescription()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->access$400(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "genericDescip":Ljava/lang/String;
    const v5, 0x7f0e06e8

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 218
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;

    invoke-direct {v6, p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
