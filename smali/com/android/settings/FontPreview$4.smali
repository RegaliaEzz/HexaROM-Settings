.class Lcom/android/settings/FontPreview$4;
.super Ljava/lang/Object;
.source "FontPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FontPreview;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FontPreview;


# direct methods
.method constructor <init>(Lcom/android/settings/FontPreview;)V
    .locals 0

    .prologue
    .line 907
    iput-object p1, p0, Lcom/android/settings/FontPreview$4;->this$0:Lcom/android/settings/FontPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/settings/FontPreview$4;->this$0:Lcom/android/settings/FontPreview;

    invoke-virtual {v0}, Lcom/android/settings/FontPreview;->finish()V

    .line 911
    return-void
.end method
