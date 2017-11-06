.class public Lcom/ts/MainUI/CstTv$TV_SAVE;
.super Ljava/lang/Object;
.source "CstTv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/CstTv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TV_SAVE"
.end annotation


# instance fields
.field public nMode:I

.field public nSaveCh:[I

.field public nSaveNum:I

.field public nWatchNum:I

.field final synthetic this$0:Lcom/ts/MainUI/CstTv;


# direct methods
.method public constructor <init>(Lcom/ts/MainUI/CstTv;)V
    .locals 1

    .prologue
    .line 111
    iput-object p1, p0, Lcom/ts/MainUI/CstTv$TV_SAVE;->this$0:Lcom/ts/MainUI/CstTv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ts/MainUI/CstTv$TV_SAVE;->nSaveCh:[I

    return-void
.end method
