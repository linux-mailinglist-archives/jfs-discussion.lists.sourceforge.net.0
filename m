Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA77E5FEEF5
	for <lists+jfs-discussion@lfdr.de>; Fri, 14 Oct 2022 15:50:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ojL4q-00049D-GA;
	Fri, 14 Oct 2022 13:50:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <palmer@rivosinc.com>) id 1oj6VC-0003Pr-D8
 for jfs-discussion@lists.sourceforge.net;
 Thu, 13 Oct 2022 22:16:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:From:Cc:Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JvqzMQuG2ysbuflR34UFHsMOAGwcuRu//rcYf9o8Plw=; b=HTauTtR2OGfaBCgN+tUwiYK10M
 Q0SXsl4houn437oU1vAZd5uXFAfmENDOHkyeNqLSZfUYqifFdKGCnnp62TZ0sw4L/8B1gQA6rAr1F
 HSlThhZyntDfDY5xXNUzhrzwdvx3gxkf/FIVw8Iu2cMidvC0y0BDEkFDFCWQxUdUF74A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:From:Cc:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JvqzMQuG2ysbuflR34UFHsMOAGwcuRu//rcYf9o8Plw=; b=a
 u2v8yq/sVp7zYalmXLRQhZSq6twAJ4EYG20g560P/+CYMum4ILa6pplZTWWbSo2tSX6hS3yiBwQKt
 Ln/32+qyZwXMjeIIW9X2mI3q5s8u/nmn98AZpYJhUvQ90JnefowpjZskb7ZgmyuWhk4n0l0IUZEXx
 QPHUesh2ZBwgHNQ4=;
Received: from mail-pg1-f173.google.com ([209.85.215.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oj6VA-002qYD-JM for jfs-discussion@lists.sourceforge.net;
 Thu, 13 Oct 2022 22:16:30 +0000
Received: by mail-pg1-f173.google.com with SMTP id 129so2728128pgc.5
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 13 Oct 2022 15:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
 h=to:from:cc:content-transfer-encoding:mime-version:message-id:date
 :subject:from:to:cc:subject:date:message-id:reply-to;
 bh=JvqzMQuG2ysbuflR34UFHsMOAGwcuRu//rcYf9o8Plw=;
 b=VOhZUJ8HWpyodxNy9hEF+jJ52uPI2e0oBaO1RhSBkI3oLLYc/74IND3TkIv+sEZbQF
 2rlyEzS99kFSA2jTUJKDhv/9Aq1YAJlD5p0L559tMtVCasDFvI9bWDY29+ErRJoyma8W
 UwgquJ5ahHhJdsTJHOfsT7ApoEhkW/XHRrgeS2gP+xMBUhwMc7RvJBnVVesqpEulHa10
 55w9Pw3A/X//om0F8CHibb1ghqPEgsfDrnpqs4d3d+A+V/fxJd8WJZt8alcjULagrd/N
 9y5BKPOXPiH0A9K2q5m0zp0Xkih3UmMht9ZdsJLhZpS5U7xCLFwWqVN0oguA9YVybRTK
 /nbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:cc:content-transfer-encoding:mime-version:message-id:date
 :subject:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=JvqzMQuG2ysbuflR34UFHsMOAGwcuRu//rcYf9o8Plw=;
 b=DkDvv1BoM5SO/f9UZbmgNECRI/j9msVFWoq92/91Gaa5A8uG3f2Z4ZZXrTExJRQv7a
 LJh59F4qGYB4OvKpkeivJTv0kGYlvZYnpy29lNqLBXFV+cmF8Gk+6uF1/ZuMOVMY2qBx
 zVXx1neZ9cRK1ox/crcLm3JyCUEOJeGIRzb3ME6amsaLObU4taN/W2XWO2uVBBw8jF2i
 J0ATm1rV0abgg0Yxc/FJwcDNtIJJUR2AS+Ar8ZoioUNa68st69PL/yphipmZoRJnWFxG
 BPPXFRlUaA2Xop+ejye9XkZt+x9pzrM9esmvThy5qjnfu+7c65xghthO5004PKLdUqDE
 xkuQ==
X-Gm-Message-State: ACrzQf0IxvorDrFgZub+/BYiIM0CxGtb16VZv1e7/uGRtl/0kA7ePSAv
 u5/1vfl8ER5ZJvyHfzmqUvAHaqy+bhzcTpx+
X-Google-Smtp-Source: AMsMyM77MaqGBAHFmJlDQnHnsmOLwoA7y7mMTrwXCkONizLkseACp88n9Lkm5RIcw3kGmIhemDfo6w==
X-Received: by 2002:a63:1b5d:0:b0:461:7362:e8b5 with SMTP id
 b29-20020a631b5d000000b004617362e8b5mr1678019pgm.83.1665697753893; 
 Thu, 13 Oct 2022 14:49:13 -0700 (PDT)
Received: from localhost ([50.221.140.188]) by smtp.gmail.com with ESMTPSA id
 t14-20020a17090a3e4e00b0020ad86f4c54sm232814pjm.16.2022.10.13.14.49.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Oct 2022 14:49:12 -0700 (PDT)
Date: Thu, 13 Oct 2022 14:46:38 -0700
Message-Id: <20221013214638.30994-1-palmer@rivosinc.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
From: Palmer Dabbelt <palmer@rivosinc.com>
To: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Github deprecated the git:// links about a year ago, so let's
 move to the https:// URLs instead. Reported-by: Conor Dooley
 <conor.dooley@microchip.com>
 Link: https://github.blog/2021-09-01-improving-git-protocol-security-github/
 Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com> --- I've split t [...]
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.173 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.173 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oj6VA-002qYD-JM
X-Mailman-Approved-At: Fri, 14 Oct 2022 13:50:15 +0000
Subject: [Jfs-discussion] [PATCH] MAINTAINERS: git://github ->
 https://github.com for kleikamp
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
Cc: Conor Dooley <conor.dooley@microchip.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@rivosinc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Github deprecated the git:// links about a year ago, so let's move to
the https:// URLs instead.

Reported-by: Conor Dooley <conor.dooley@microchip.com>
Link: https://github.blog/2021-09-01-improving-git-protocol-security-github/
Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
---
I've split these up by github username so folks can take them
independently, as some of these repos have been renamed at github and
thus need more than just a sed to fix them.
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 6a4e8144198b..9a47bd58a330 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10867,7 +10867,7 @@ M:	Dave Kleikamp <shaggy@kernel.org>
 L:	jfs-discussion@lists.sourceforge.net
 S:	Maintained
 W:	http://jfs.sourceforge.net/
-T:	git git://github.com/kleikamp/linux-shaggy.git
+T:	git https://github.com/kleikamp/linux-shaggy.git
 F:	Documentation/admin-guide/jfs.rst
 F:	fs/jfs/
 
-- 
2.38.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
