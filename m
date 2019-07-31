Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5ACC7CECC
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 Jul 2019 22:38:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hsvMT-0005cm-7s; Wed, 31 Jul 2019 20:38:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab@bombadil.infradead.org>) id 1hsuuU-0007Pa-UI
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 20:09:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RGnIbstR67/d58/2VBeEsEJ/D0YYSvIZYvE9aUkOglI=; b=RYJaWBDUFGaS+t8xxpotwA79EW
 SrUV0k9enChFTotDf7XSc+SkDlWnQwbNblUy6qMrzvn5hQJxHLMzTaoLlAWjpIX4NbMnakqEJqmSH
 87g1uzPvu27FxEc+qLuSGbUplr1GUOaC/9qZtBhW0OlXZWSxIBMp+UfLKMNtPnayL4Xw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RGnIbstR67/d58/2VBeEsEJ/D0YYSvIZYvE9aUkOglI=; b=HAp89ym57BaJxA/pSW90SpoBTU
 lpbCUA0NpLTDRCpE9GIcuwRxYgV7z5juCEEdJkFiixXjJPZu44159Zt1gHuTOt+gpeH4BfCOMhAGy
 rH0jNy6VmUTy8u64//9XG17IdQU2R2gYhWcOzXgAHy+E6WV6HEh6u/t+j4U2Iz0Dpk/o=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsuuS-005biS-1A
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 20:09:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RGnIbstR67/d58/2VBeEsEJ/D0YYSvIZYvE9aUkOglI=; b=sXCTHXEsA7iDFFkPD1idGMZHXg
 rljnX14PeB7vCozRMFWMAx92dwvrdMapCECbrpmzysy4xykG2nB25d/IAmmNTkv2qwr1obwhmSs24
 PBT5iy7zEoisaKGVdcoUHBom22tylx57JldxYMsbU5fxVChyHfRycxRWfaK4gIyOToNX82M8QxRXU
 T80P6hzjoV+MXn/JADYfhvA3wTaUxHTT9igt/zZS2BSRqmN3DgEevpWCLfREFWsnlAiiphCpkkSkX
 G5zHBKJpgFnZvtb9sYeT9c2EN2GIv4yt6U6Hu/+0y41PGzAaGziR2djBMnRUNKVazBVAmQXraXxt9
 Dq6GqtZQ==;
Received: from [191.33.152.89] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hsuu8-0007qC-HH; Wed, 31 Jul 2019 20:08:56 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1hsuu6-00079g-72; Wed, 31 Jul 2019 17:08:54 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Wed, 31 Jul 2019 17:08:48 -0300
Message-Id: <5b4fae5978d309641fa8ba233a9efe2b48201cd6.1564603513.git.mchehab+samsung@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1564603513.git.mchehab+samsung@kernel.org>
References: <cover.1564603513.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hsuuS-005biS-1A
X-Mailman-Approved-At: Wed, 31 Jul 2019 20:38:11 +0000
Subject: [Jfs-discussion] [PATCH 1/6] docs: fix a couple of new broken
 references
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Dave Kleikamp <shaggy@kernel.org>,
 alsa-devel@alsa-project.org, Evgeniy Dushistov <dushistov@mail.ru>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org, jfs-discussion@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Those are due to recent changes. Most of the issues
can be automatically fixed with:

	$ ./scripts/documentation-file-ref-check --fix

The only exception was the sound binding with required
manual work.

Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt | 2 +-
 MAINTAINERS                                                 | 4 ++--
 drivers/hwtracing/coresight/Kconfig                         | 2 +-
 fs/jfs/Kconfig                                              | 2 +-
 fs/ufs/Kconfig                                              | 2 +-
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt b/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
index 2ca3d138528e..7ecf6bd60d27 100644
--- a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
+++ b/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
@@ -4,7 +4,7 @@ Allwinner SUN8I audio codec
 On Sun8i-A33 SoCs, the audio is separated in different parts:
 	  - A DAI driver. It uses the "sun4i-i2s" driver which is
 	  documented here:
-	  Documentation/devicetree/bindings/sound/sun4i-i2s.txt
+	  Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
 	  - An analog part of the codec which is handled as PRCM registers.
 	  See Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
 	  - An digital part of the codec which is documented in this current
diff --git a/MAINTAINERS b/MAINTAINERS
index 6de82f019a52..f109a8bcffda 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8659,7 +8659,7 @@ L:	jfs-discussion@lists.sourceforge.net
 W:	http://jfs.sourceforge.net/
 T:	git git://github.com/kleikamp/linux-shaggy.git
 S:	Maintained
-F:	Documentation/filesystems/jfs.txt
+F:	Documentation/admin-guide/jfs.rst
 F:	fs/jfs/
 
 JME NETWORK DRIVER
@@ -16439,7 +16439,7 @@ F:	drivers/hid/hid-udraw-ps3.c
 UFS FILESYSTEM
 M:	Evgeniy Dushistov <dushistov@mail.ru>
 S:	Maintained
-F:	Documentation/filesystems/ufs.txt
+F:	Documentation/admin-guide/ufs.rst
 F:	fs/ufs/
 
 UHID USERSPACE HID IO DRIVER:
diff --git a/drivers/hwtracing/coresight/Kconfig b/drivers/hwtracing/coresight/Kconfig
index 14638db4991d..7a9f5fb08330 100644
--- a/drivers/hwtracing/coresight/Kconfig
+++ b/drivers/hwtracing/coresight/Kconfig
@@ -106,7 +106,7 @@ config CORESIGHT_CPU_DEBUG
 	  can quickly get to know program counter (PC), secure state,
 	  exception level, etc. Before use debugging functionality, platform
 	  needs to ensure the clock domain and power domain are enabled
-	  properly, please refer Documentation/trace/coresight-cpu-debug.txt
+	  properly, please refer Documentation/trace/coresight-cpu-debug.rst
 	  for detailed description and the example for usage.
 
 endif
diff --git a/fs/jfs/Kconfig b/fs/jfs/Kconfig
index 22a273bd4648..05cb0e8e4382 100644
--- a/fs/jfs/Kconfig
+++ b/fs/jfs/Kconfig
@@ -5,7 +5,7 @@ config JFS_FS
 	select CRC32
 	help
 	  This is a port of IBM's Journaled Filesystem .  More information is
-	  available in the file <file:Documentation/filesystems/jfs.txt>.
+	  available in the file <file:Documentation/admin-guide/jfs.rst>.
 
 	  If you do not intend to use the JFS filesystem, say N.
 
diff --git a/fs/ufs/Kconfig b/fs/ufs/Kconfig
index fcb41516ea59..6d30adb6b890 100644
--- a/fs/ufs/Kconfig
+++ b/fs/ufs/Kconfig
@@ -9,7 +9,7 @@ config UFS_FS
 	  this file system as well. Saying Y here will allow you to read from
 	  these partitions; if you also want to write to them, say Y to the
 	  experimental "UFS file system write support", below. Please read the
-	  file <file:Documentation/filesystems/ufs.txt> for more information.
+	  file <file:Documentation/admin-guide/ufs.rst> for more information.
 
           The recently released UFS2 variant (used in FreeBSD 5.x) is
           READ-ONLY supported.
-- 
2.21.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
