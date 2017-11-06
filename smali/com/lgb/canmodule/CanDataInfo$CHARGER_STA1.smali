.class public Lcom/lgb/canmodule/CanDataInfo$CHARGER_STA1;
.super Ljava/lang/Object;
.source "CanDataInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgb/canmodule/CanDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CHARGER_STA1"
.end annotation


# instance fields
.field public CHARGER_Output_Crt:I

.field public CHARGER_Output_Vol:I

.field public Update:I

.field public UpdateOnce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
