.class Lcom/android/settings/DataUsageSummary$49$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$49;->onConnected(Lcom/opera/max/sdk/traffic/ITrafficService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DataUsageSummary$49;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$49;)V
    .locals 0

    .prologue
    .line 6950
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$49$1;->this$1:Lcom/android/settings/DataUsageSummary$49;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6952
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$49$1;->this$1:Lcom/android/settings/DataUsageSummary$49;

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$49;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateSavedTvState()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$9100(Lcom/android/settings/DataUsageSummary;)V

    .line 6953
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$49$1;->this$1:Lcom/android/settings/DataUsageSummary$49;

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary$49;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->updateSavedDataCircleView()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$1200(Lcom/android/settings/DataUsageSummary;)V

    .line 6954
    return-void
.end method
