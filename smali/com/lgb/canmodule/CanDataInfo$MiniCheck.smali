.class public Lcom/lgb/canmodule/CanDataInfo$MiniCheck;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiniCheck"
.end annotation


# instance fields
.field public CurIndex:I

.field public Item:[I

.field public Num:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3144
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lgb/canmodule/CanDataInfo$MiniCheck;->Item:[I

    .line 3136
    return-void
.end method
