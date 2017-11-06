.class public Lcom/ts/MainUI/StTpms$TPMS_SAVE;
.super Ljava/lang/Object;
.source "StTpms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/StTpms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TPMS_SAVE"
.end annotation


# instance fields
.field public nOnOffFlag:I

.field public nPskDW:I

.field public nPskHigh:I

.field public nPskLow:I

.field public nTempDW:I

.field public nTempHigh:I

.field public nWarnTime:I

.field public nWriteFlag:I

.field final synthetic this$0:Lcom/ts/MainUI/StTpms;


# direct methods
.method public constructor <init>(Lcom/ts/MainUI/StTpms;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->this$0:Lcom/ts/MainUI/StTpms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
