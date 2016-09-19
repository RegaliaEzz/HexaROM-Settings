.class Lcom/android/settings/encryption/CryptSDCardSettings$3;
.super Ljava/lang/Object;
.source "CryptSDCardSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/encryption/CryptSDCardSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$3;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$3;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButtonSelected:Z
    invoke-static {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$1402(Lcom/android/settings/encryption/CryptSDCardSettings;Z)Z

    .line 203
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$3;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    # invokes: Lcom/android/settings/encryption/CryptSDCardSettings;->applyEncryptionUpdates()V
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$1300(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    .line 204
    return-void
.end method
