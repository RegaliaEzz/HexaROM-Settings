.class Lcom/android/settings/wfd/WifiDisplaySettings$2;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "clickedItem"    # Landroid/view/MenuItem;

    .prologue
    .line 553
    const-string v0, "WifiDisplaySettings"

    const-string v1, "onMenuItemClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
