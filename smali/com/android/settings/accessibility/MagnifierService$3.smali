.class Lcom/android/settings/accessibility/MagnifierService$3;
.super Landroid/database/ContentObserver;
.source "MagnifierService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MagnifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MagnifierService;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/MagnifierService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/accessibility/MagnifierService$3;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService$3;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/MagnifierService;->onUpdate()V

    .line 86
    return-void
.end method