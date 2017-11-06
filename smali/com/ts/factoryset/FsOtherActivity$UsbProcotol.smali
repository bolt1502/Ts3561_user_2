.class final enum Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;
.super Ljava/lang/Enum;
.source "FsOtherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsOtherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UsbProcotol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

.field public static final enum USB_PROCOTOL_11:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

.field public static final enum USB_PROCOTOL_20:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

.field public static final enum USB_PROCOTOL_UNKNOW:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    const-string v1, "USB_PROCOTOL_UNKNOW"

    invoke-direct {v0, v1, v2}, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->USB_PROCOTOL_UNKNOW:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    new-instance v0, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    const-string v1, "USB_PROCOTOL_11"

    invoke-direct {v0, v1, v3}, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->USB_PROCOTOL_11:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    new-instance v0, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    const-string v1, "USB_PROCOTOL_20"

    invoke-direct {v0, v1, v4}, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->USB_PROCOTOL_20:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    sget-object v1, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->USB_PROCOTOL_UNKNOW:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->USB_PROCOTOL_11:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->USB_PROCOTOL_20:Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->ENUM$VALUES:[Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    return-object v0
.end method

.method public static values()[Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;->ENUM$VALUES:[Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    array-length v1, v0

    new-array v2, v1, [Lcom/ts/factoryset/FsOtherActivity$UsbProcotol;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
