.class public Lcom/ts/MainUI/StTpms$TPMSDisp;
.super Ljava/lang/Object;
.source "StTpms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/StTpms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TPMSDisp"
.end annotation


# instance fields
.field public info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

.field public ntpmsNum:I

.field final synthetic this$0:Lcom/ts/MainUI/StTpms;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/StTpms;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 73
    iput-object p1, p0, Lcom/ts/MainUI/StTpms$TPMSDisp;->this$0:Lcom/ts/MainUI/StTpms;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-array v1, v3, [Lcom/ts/MainUI/StTpms$TPMSInfo;

    iput-object v1, p0, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 78
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    new-instance v2, Lcom/ts/MainUI/StTpms$TPMSInfo;

    invoke-direct {v2, p1}, Lcom/ts/MainUI/StTpms$TPMSInfo;-><init>(Lcom/ts/MainUI/StTpms;)V

    aput-object v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
