.class public Lcom/ts/bt/BtExe$SharedPreferencesCommitor;
.super Ljava/lang/Object;
.source "BtExe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/BtExe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedPreferencesCommitor"
.end annotation


# instance fields
.field private mSharedata:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1, "sharedata"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput-object p1, p0, Lcom/ts/bt/BtExe$SharedPreferencesCommitor;->mSharedata:Landroid/content/SharedPreferences$Editor;

    .line 688
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/ts/bt/BtExe$SharedPreferencesCommitor;->mSharedata:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/ts/bt/BtExe$SharedPreferencesCommitor;->mSharedata:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 694
    :cond_0
    return-void
.end method
