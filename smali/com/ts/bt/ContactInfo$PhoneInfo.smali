.class public Lcom/ts/bt/ContactInfo$PhoneInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/bt/ContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneInfo"
.end annotation


# static fields
.field static final OPERATOR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE_REGEX:Ljava/lang/String; = "(^(\\+86)|[\\(\\)-[\\s]])"


# instance fields
.field private final LANDLINE_NUM_REGEX:Ljava/lang/String;

.field private final MOBILE_NUM_REGEX:Ljava/lang/String;

.field private flag:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private mLandlineNumPattern:Ljava/util/regex/Pattern;

.field private mMobileNumPattern:Ljava/util/regex/Pattern;

.field private numId:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/ts/bt/ContactInfo$PhoneInfo$1;

    invoke-direct {v0}, Lcom/ts/bt/ContactInfo$PhoneInfo$1;-><init>()V

    sput-object v0, Lcom/ts/bt/ContactInfo$PhoneInfo;->OPERATOR_MAP:Ljava/util/Map;

    .line 254
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const-string v0, "[1]{1}[3,4,5,7,8]{1}[0-9]{9}"

    iput-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->MOBILE_NUM_REGEX:Ljava/lang/String;

    .line 262
    const-string v0, "[0]{0,1}[0-9]{2,3}[0-9]{7,8}"

    iput-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->LANDLINE_NUM_REGEX:Ljava/lang/String;

    .line 263
    const-string v0, "[1]{1}[3,4,5,7,8]{1}[0-9]{9}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->mMobileNumPattern:Ljava/util/regex/Pattern;

    .line 264
    const-string v0, "[0]{0,1}[0-9]{2,3}[0-9]{7,8}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->mLandlineNumPattern:Ljava/util/regex/Pattern;

    .line 268
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->number:Ljava/lang/String;

    .line 272
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->numId:Ljava/lang/String;

    .line 276
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->location:Ljava/lang/String;

    .line 280
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->operator:Ljava/lang/String;

    .line 284
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->type:Ljava/lang/String;

    .line 288
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->flag:Ljava/lang/String;

    .line 291
    return-void
.end method


# virtual methods
.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getNumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->numId:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->flag:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "callerCity"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->location:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setLocationAndOperator(Ljava/lang/String;)V
    .locals 4
    .param p1, "area"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iput-object p1, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->location:Ljava/lang/String;

    .line 357
    :cond_0
    sget-object v0, Lcom/ts/bt/ContactInfo$PhoneInfo;->OPERATOR_MAP:Ljava/util/Map;

    iget-object v1, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->number:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->operator:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setNumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "numId"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->numId:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    const-string v0, "(^(\\+86)|[\\(\\)-[\\s]])"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 300
    iput-object p1, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->number:Ljava/lang/String;

    .line 302
    :cond_0
    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->operator:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->type:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public setTypeAndTagByTypeId(ILjava/lang/String;)V
    .locals 1
    .param p1, "typeId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->mMobileNumPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    const-string v0, "\u93b5\u5b2b\u6e80"

    iput-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->type:Ljava/lang/String;

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->mLandlineNumPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const-string v0, "\u6434\u0444\u6e80"

    iput-object v0, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->type:Ljava/lang/String;

    goto :goto_0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 389
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "number"

    iget-object v2, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    const-string v1, "location"

    iget-object v2, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    const-string v1, "operator"

    iget-object v2, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->operator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    const-string v1, "type"

    iget-object v2, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string v1, "flag"

    iget-object v2, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->flag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callerloc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " operator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->operator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/bt/ContactInfo$PhoneInfo;->flag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
