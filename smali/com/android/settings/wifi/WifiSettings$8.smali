.class Lcom/android/settings/wifi/WifiSettings$8;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 926
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # invokes: Lcom/android/settings/wifi/WifiSettings;->isMobileApON()Z
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$1400(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$1600(Lcom/android/settings/wifi/WifiSettings;I)V

    .line 946
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$8;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onP2pMenuPressed()V

    .line 952
    return-void
.end method
