.class public Landroid/support/v13/app/FragmentCompat;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/app/FragmentCompat$MncFragmentCompatImpl;,
        Landroid/support/v13/app/FragmentCompat$ICSMR1FragmentCompatImpl;,
        Landroid/support/v13/app/FragmentCompat$ICSFragmentCompatImpl;,
        Landroid/support/v13/app/FragmentCompat$BaseFragmentCompatImpl;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 107
    new-instance v0, Landroid/support/v13/app/FragmentCompat$MncFragmentCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$MncFragmentCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    .line 115
    :goto_0
    return-void

    .line 108
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 109
    new-instance v0, Landroid/support/v13/app/FragmentCompat$ICSMR1FragmentCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$ICSMR1FragmentCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_0

    .line 110
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 111
    new-instance v0, Landroid/support/v13/app/FragmentCompat$ICSFragmentCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$ICSFragmentCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_0

    .line 113
    :cond_2
    new-instance v0, Landroid/support/v13/app/FragmentCompat$BaseFragmentCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$BaseFragmentCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_0
.end method

.method public static setMenuVisibility(Landroid/app/Fragment;Z)V
    .locals 1
    .param p0, "f"    # Landroid/app/Fragment;
    .param p1, "visible"    # Z

    .prologue
    .line 145
    sget-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 146
    return-void
.end method

.method public static setUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 1
    .param p0, "f"    # Landroid/app/Fragment;
    .param p1, "deferStart"    # Z

    .prologue
    .line 153
    sget-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 154
    return-void
.end method
