.class Lcom/android/settings/wifi/WifiSettings$21;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->onResetMenuPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 2595
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2597
    new-instance v0, Lcom/android/settings/wifi/WifiReset;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiReset;-><init>(Landroid/content/Context;)V

    .line 2598
    .local v0, "reset":Lcom/android/settings/wifi/WifiReset;
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiReset;->start()V

    .line 2599
    return-void
.end method
