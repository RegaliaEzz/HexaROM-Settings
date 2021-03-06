.class public Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
.super Ljava/lang/Object;
.source "Pie.java"


# instance fields
.field private center_x:I

.field private center_y:I

.field private colorValue:Ljava/lang/String;

.field private finalStartAngle:F

.field private finalSweepAngle:F

.field private hasLine:Z

.field private line_x:I

.field private line_y:I

.field private paint:Landroid/graphics/Paint;

.field private radius:I

.field private startAngle:F

.field private sweepAngle:F


# direct methods
.method public constructor <init>(FFLjava/lang/String;III)V
    .locals 2
    .param p1, "startAngle"    # F
    .param p2, "sweepValue"    # F
    .param p3, "colorValue"    # Ljava/lang/String;
    .param p4, "line_x"    # I
    .param p5, "line_y"    # I
    .param p6, "radius"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->startAngle:F

    .line 19
    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->sweepAngle:F

    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->hasLine:Z

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    .line 71
    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalStartAngle:F

    .line 73
    iput p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    .line 75
    iput-object p3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->colorValue:Ljava/lang/String;

    .line 77
    iput p4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->line_x:I

    .line 79
    iput p5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->line_y:I

    .line 81
    iput p6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->paint:Landroid/graphics/Paint;

    .line 87
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setPaintColor()V

    .line 91
    return-void
.end method

.method private setPaintColor()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->colorValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f400000    # 0.75f

    .line 209
    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalStartAngle:F

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 211
    .local v0, "degree":D
    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-double v2, v4

    .line 213
    .local v2, "distance":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->center_x:I

    .line 215
    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->center_x:I

    return v4
.end method

.method public getCenterY()I
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f400000    # 0.75f

    .line 235
    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalStartAngle:F

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 237
    .local v0, "degree":D
    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-double v2, v4

    .line 239
    .local v2, "distance":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->center_y:I

    .line 241
    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->center_y:I

    return v4
.end method

.method public getColorValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->colorValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalStartAngle()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalStartAngle:F

    return v0
.end method

.method public getFinalSweepAngle()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    return v0
.end method

.method public getLineX()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->line_x:I

    return v0
.end method

.method public getLineY()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->line_y:I

    return v0
.end method

.method public getModifiedCenterX(FF)I
    .locals 9
    .param p1, "startAngle"    # F
    .param p2, "sweepAngle"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f400000    # 0.75f

    .line 223
    div-float v4, p2, v8

    add-float/2addr v4, p1

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 225
    .local v0, "degree":D
    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-double v2, v4

    .line 227
    .local v2, "distance":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    return v4
.end method

.method public getModifiedCenterY(FF)I
    .locals 9
    .param p1, "startAngle"    # F
    .param p2, "sweepAngle"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f400000    # 0.75f

    .line 249
    div-float v4, p2, v8

    add-float/2addr v4, p1

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 251
    .local v0, "degree":D
    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-double v2, v4

    .line 253
    .local v2, "distance":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    return v4
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getReverseStartAngle()F
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalStartAngle:F

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getReverseSweepAngle()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    neg-float v0, v0

    return v0
.end method

.method public getStartAngle()F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->startAngle:F

    return v0
.end method

.method public getSweepAngle()F
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->sweepAngle:F

    return v0
.end method

.method public hasLine()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 293
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->line_x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->line_y:I

    if-ne v0, v1, :cond_0

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->hasLine:Z

    .line 305
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->hasLine:Z

    return v0

    .line 299
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->hasLine:Z

    goto :goto_0
.end method

.method public setFinalSweepAngle(F)V
    .locals 0
    .param p1, "sweepAngle"    # F

    .prologue
    .line 113
    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    .line 115
    return-void
.end method

.method public setStartAngle(F)V
    .locals 0
    .param p1, "startAngle"    # F

    .prologue
    .line 129
    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->startAngle:F

    .line 131
    return-void
.end method

.method public setSweepAngle(F)V
    .locals 0
    .param p1, "sweepAngle"    # F

    .prologue
    .line 137
    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->sweepAngle:F

    .line 139
    return-void
.end method
