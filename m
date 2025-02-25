Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D81DCA43DF3
	for <lists+jfs-discussion@lfdr.de>; Tue, 25 Feb 2025 12:42:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tmtJt-0006Cp-Q5;
	Tue, 25 Feb 2025 11:41:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rand.sec96@gmail.com>) id 1tmtJk-0006C2-Sk
 for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Feb 2025 11:41:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8XaDH+/IUdzUxU3rKSG4BJ2f9MD4nYgc4l0NxVp6Pfc=; b=BliiuMJ3f7HyAGTYX569E8DDDM
 Hxuc05LrXSQhI96zEFnKaJbjiqz7r1A83jDYQJxNoqJ6ge3IqR8Gz8J4mv4sYwZq9TglznDXcXWkE
 bUVMWu/dF0EbY1Y7eVM583UVN5N8S0yvTTczs5hpfccTHv7Noatt3I259EClwPpXMdPY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8XaDH+/IUdzUxU3rKSG4BJ2f9MD4nYgc4l0NxVp6Pfc=; b=X
 scj3TLKr0OiClZFQIIfSBMjYE+z20gf/+WS3kbAXu58LWdYoeBsB4wziADSKNeyXeHfdYzprQK3px
 zLcd6eQ9+YmbGJfNqp+pvYPFMuk7glRVOUoJjzjRYFSRSvRjZ6UGlF/lYZmKacUpvR+8ULek6Epcf
 Jj27/zIv9HYr1djE=;
Received: from mail-lj1-f172.google.com ([209.85.208.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tmtJh-0006MP-3T for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Feb 2025 11:41:37 +0000
Received: by mail-lj1-f172.google.com with SMTP id
 38308e7fff4ca-30a2cdb2b98so55105191fa.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 25 Feb 2025 03:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740483690; x=1741088490; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=8XaDH+/IUdzUxU3rKSG4BJ2f9MD4nYgc4l0NxVp6Pfc=;
 b=etmN8Q+y8ToHDQeZalVESJdy4VoLZjfhWqW2LYgAmjYDmegfVqV2c5O3dPfNauSHl+
 pyOTJFjCSNs36A9/JUpxp6eFqSV3TfY5Z1vunHAf2iV+9FkrnNjHoz/BcoVasLeJHWJb
 Am+KDC3uHh3mCEYgLhPnWV+tT0HAqz+D6Xcix5kBmFym9cWN/1PBzgaZRJmz0it+R9wM
 ncjeC9nTl0rJaC5W8uNAjqKENbO0SPncZO5Vq7hy0vVwWJoCCaZ3wGHTfWYESxrvQdNf
 2zcSkmAonxXh/hMj1rce0X0l4CCCabLHznJ2XkYsB0LAMeVg0Jw25agX4gu137UfM7me
 9JwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740483690; x=1741088490;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8XaDH+/IUdzUxU3rKSG4BJ2f9MD4nYgc4l0NxVp6Pfc=;
 b=BZyCM8FvQv2S+wbBsECPqm1qRJD7RPrrCTOoyObM9xzzJPr1zIH3M/upfAlWSgqq/P
 HWQqBdg6VoqoeOfms2PSbev698E92irB/Cb1fDipLUVIMZEzBtpmKDqWep57NnDqWgT1
 XO48jhdhh/tqZsUj9drTJiaaUrGvDjVfbZJSD10NIcXr+lTF6eSnJvCNJKmWf5o7CffL
 zebPPVGlpLLfgCDCY981a6MeUBS7VcaWcrzW9nF4hIpOtnEqYxBBLH9hLuxtagsDM594
 ohNbhtVXMW/XNovnYHvG3y+cf2lFrTDNcerdtzJS+nHhdAJxeyLIHqVuHNxMEgmzWBPY
 YlfA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUYWXfzutLCWs/awrovU9CqhaYKKA3hTO+eU4xTtGX2O0kP9D7tHihNyVaTBOwEVNSUShKDfU0ehlJ6jVStVg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw1GV2cGjxqS8UcbvcBTY6zWpbPV7ZJ7QnjVoQmaCzmC6xxTu3g
 k2MrSea+FPDJpCP9NNSg83zwiLK6do1R5BtX09R1pwT8WBFgES4s
X-Gm-Gg: ASbGncvhKi7IDs61i9ReWT/8/GtsWDK2zu0CFDD3A1/AsdfJwAKUhHevGVtqX3RE7au
 8Y4K0kkYSh8sajOBUymh4j+O/Gr1ZOWTL8vqhPnY7OaZLwdqtnKGjBLL26XMi7zj2ORTHSFDJgR
 XYj+r7V/RJgQaL0DUJn+vG8Axnh1WgS19tU/RJ0bm3XoirFvPzkfoU0pV79ZRIsA1D5IhrR0HFR
 4o/AvHlTIp9TZgg17zp8PHrzzVCddrkQWStCURO/jF76EP1Hkny8gnDBmJegv/tsjcoYOIwJh/c
 13XOcOcjLSzRE91MjhJKC5mSmQRxufLAmEEokaw1bqgRJulGh/T5/CRgikeuGY0X/fdi
X-Google-Smtp-Source: AGHT+IGXH3QhYImzslzT4d+BYSdlO38JoErquXF3tDK1WvkYjwRybP9spHTVyKnKE2ZXhilgfqU5GA==
X-Received: by 2002:a2e:9cc9:0:b0:300:2ddb:aaa5 with SMTP id
 38308e7fff4ca-30a5b20d7b5mr55610181fa.30.1740483689963; 
 Tue, 25 Feb 2025 03:41:29 -0800 (PST)
Received: from rand-ubuntu-development.dl.local (mail.confident.ru.
 [85.114.29.218]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-30a819e1462sm2107311fa.21.2025.02.25.03.41.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2025 03:41:29 -0800 (PST)
To: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Tue, 25 Feb 2025 14:41:10 +0300
Message-Id: <20250225114110.1775745-1-rand.sec96@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In dbMapFileSizeToMapSize(),
 the calculation involving 'complete'
 and 'LPERCTL' can result in a 32-bit integer overflow when handling large
 filesystems. Specifically, multiplying 'complete' by LPERCTL [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.172 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.208.172 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.208.172 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [rand.sec96[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rand.sec96[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.172 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tmtJh-0006MP-3T
Subject: [Jfs-discussion] [PATCH] fs/jfs: prevent potential integer overflow
 in dbMapFileSizeToMapSize
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
From: Rand Deeb via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Rand Deeb <rand.sec96@gmail.com>
Cc: voskresenski.stanislav@confident.ru, deeb.rand@confident.ru,
 lvc-project@linuxtesting.org, Rand Deeb <rand.sec96@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

In dbMapFileSizeToMapSize(), the calculation involving 'complete' and
'LPERCTL' can result in a 32-bit integer overflow when handling large
filesystems. Specifically, multiplying 'complete' by LPERCTL * LPERCTL
(1,048,576) can exceed the 32-bit integer limit if 'complete' is greater
than approximately 2,047.

While there is no evidence that 'complete' can exceed this threshold,
theoretically, this is possible. To ensure robustness and maintainability,
this patch casts only 'complete' to s64 (64-bit integer) before performing
the multiplication. This guarantees that the arithmetic is conducted in
64-bit space, accommodating larger values without overflow.

This change enhances the reliability of the JFS filesystem when managing
large volumes and preemptively addresses potential overflow issues.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Rand Deeb <rand.sec96@gmail.com>
---
 fs/jfs/jfs_dmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index edb22cf9521a..380e73c516ee 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -4059,7 +4059,7 @@ s64 dbMapFileSizeToMapSize(struct inode * ipbmap)
 		factor =
 		    (i == 2) ? MAXL1PAGES : ((i == 1) ? MAXL0PAGES : 1);
 		complete = (u32) npages / factor;
-		ndmaps += complete * ((i == 2) ? LPERCTL * LPERCTL :
+		ndmaps += (s64)complete * ((i == 2) ? LPERCTL * LPERCTL :
 				      ((i == 1) ? LPERCTL : 1));
 
 		/* pages in last/incomplete child */
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
