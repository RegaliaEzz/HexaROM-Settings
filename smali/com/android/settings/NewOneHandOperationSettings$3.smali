.class Lcom/android/settings/NewOneHandOperationSettings$3;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NewOneHandOperationSettings;->reduceSizeDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NewOneHandOperationSettings;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 368
    iget-object v1, p0, Lcom/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    # getter for: Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/NewOneHandOperationSettings;->access$100(Lcom/android/settings/NewOneHandOperationSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NewOneHandOperationSettings$3;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v2}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "any_screen_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 369
    return-void
.end method
