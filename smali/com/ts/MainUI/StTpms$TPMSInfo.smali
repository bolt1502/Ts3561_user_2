.class public Lcom/ts/MainUI/StTpms$TPMSInfo;
.super Ljava/lang/Object;
.source "StTpms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/StTpms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TPMSInfo"
.end annotation


# instance fields
.field public nID:I

.field public nInvalid:I

.field public nState:I

.field public nTemp:I

.field public nWarnP:I

.field public nWarnS:I

.field public nWarnV:I

.field public npa:D

.field final synthetic this$0:Lcom/ts/MainUI/StTpms;


# direct methods
.method public constructor <init>(Lcom/ts/MainUI/StTpms;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ts/MainUI/StTpms$TPMSInfo;->this$0:Lcom/ts/MainUI/StTpms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
