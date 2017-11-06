.class public Lcom/ts/can/CanIF$CAN_ID3;
.super Ljava/lang/Object;
.source "CanIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/CanIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CAN_ID3"
.end annotation


# instance fields
.field public sAlbum:Ljava/lang/String;

.field public sArtist:Ljava/lang/String;

.field public sName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
