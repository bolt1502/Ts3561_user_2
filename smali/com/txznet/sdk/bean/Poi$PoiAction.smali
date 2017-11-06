.class public Lcom/txznet/sdk/bean/Poi$PoiAction;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/bean/Poi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PoiAction"
.end annotation


# static fields
.field public static final ACTION_AUDIO:Ljava/lang/String; = "audio"

.field public static final ACTION_COMPANY:Ljava/lang/String; = "setCompany"

.field public static final ACTION_HOME:Ljava/lang/String; = "setHome"

.field public static final ACTION_HUIBI:Ljava/lang/String; = "setHuiBi"

.field public static final ACTION_JINGYOU:Ljava/lang/String; = "setJingYou"

.field public static final ACTION_NAVI:Ljava/lang/String; = "nav"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
