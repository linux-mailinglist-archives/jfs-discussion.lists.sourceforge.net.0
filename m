Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E0775F9DE
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Jul 2023 16:28:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qNwYD-0001A9-L1;
	Mon, 24 Jul 2023 14:28:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <halip0503@gmail.com>) id 1qNZbX-00049l-Ie
 for jfs-discussion@lists.sourceforge.net;
 Sun, 23 Jul 2023 13:58:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Sx+BOxtIPU8gktzCgzqrNzfYg5FyuT1kOcOCTJVEq+Q=; b=j++kq2PwMM3tc4e6PtEtTLUWZx
 swpHvUfd84c1V5iVB/RhwFYP50bJmoF0R98UprBp11m25zEtjR9gZZEhifMRcKkvd1H8duDj67hrf
 ikd1cr40y0j8nrG+nLrMbNd4PK/qI7vzD8Xe73wfdS3qxv431stfFoftB/E9ZCxLUG5g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Sx+BOxtIPU8gktzCgzqrNzfYg5FyuT1kOcOCTJVEq+Q=; b=NdGRvT1A7w1ll+KIHfmUZB7HZB
 KPS2qTCurOIEKwKGJdQMchAzA9u5iOICQUN7+TYv/mMJKVfN/dCWpvFNhWMklrgKPdPjciCYK6f/a
 nAg+mqJCVUXwlICVo09b8zFMOCqiA/iB25sZPpR760A0PAFa8jMiWZavTOfOwol3totU=;
Received: from mail-lj1-f180.google.com ([209.85.208.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qNZbT-00010M-Kd for jfs-discussion@lists.sourceforge.net;
 Sun, 23 Jul 2023 13:58:35 +0000
Received: by mail-lj1-f180.google.com with SMTP id
 38308e7fff4ca-2b96789d574so44959861fa.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 23 Jul 2023 06:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690120705; x=1690725505;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Sx+BOxtIPU8gktzCgzqrNzfYg5FyuT1kOcOCTJVEq+Q=;
 b=olxlfNMXs/3xj8GgHWqHm0coAHVLgDCi7z0EckxdIutSFknLv7BAYyDzd/ydfqGUTW
 VP4J9bEJ+aUPI1cS/6kP0a7oqZHqDqEL851y5nUudVJbXQi2MK+1sQw5s1vbyN1tCk/M
 xghZQ+hVNVNY2zgAeNLnlZb20vrQiNItkAgaJRQGEOlmxxOtmUMLFOgHPsj7YZoTlRHc
 uxemQRGNxvXgra5r6bHwRszl+/LDX2/hUAgYcGopvdazmKbZxqK8C5txEEBxHrDeE9Qp
 XzKvoe+5D7Cz9/KO7wgghptYCJescba05f8LPFEyMTZ2tndXFSEXI/xmM4RDAlMZ2rdU
 xN4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690120705; x=1690725505;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Sx+BOxtIPU8gktzCgzqrNzfYg5FyuT1kOcOCTJVEq+Q=;
 b=a65Q2ZYZmZSsdDZJw/dXXgxnSo3HlTa9s+gugBYZiO24PiUht+Trd/kSKSzOCRf5TW
 xre9NMm0fiCGpTc+Lv/m/HuyKErAXjIoR9z7ynAepJce7bKVCPFVaGSOyClEF2m4T1Yr
 NVqFlqmTq4emnvxV2hVqZUApl3xcNjP1OTVhWopFmSvoo+j+NEa0YPMsJmxe2E56IBEX
 zA9vPcJTClFps7vHY9vo2VJBjk4aCljXwGELbaAUU7HArmxPLZE4MJkOF/ISTGsMH5vP
 4zaje65Ok8EqBF21YY9ciZ0JxQaNlgLSxnEP6gnj/abzEeYpX3ib4jpTHdoiduG590HN
 Ui7Q==
X-Gm-Message-State: ABy/qLZGomMxBaAxc1JXeq7tCPcd6X619iMh2lyU1jo1CE8Z/r+uRILu
 OXpO7XLEECs8Y7FP/PEVm5I=
X-Google-Smtp-Source: APBJJlEmfCuINVDwQK6PzXOtJaD8Cxiu+IUL+Vl6kTMD49A3y63OG/0dbTkKlZoa6RN9fd+LJox/Wg==
X-Received: by 2002:a2e:9b15:0:b0:2b4:7f2e:a42d with SMTP id
 u21-20020a2e9b15000000b002b47f2ea42dmr4390680lji.41.1690120704584; 
 Sun, 23 Jul 2023 06:58:24 -0700 (PDT)
Received: from halip-Pc.42.fr ([93.188.41.70])
 by smtp.gmail.com with ESMTPSA id
 r17-20020a2eb611000000b002b6daa3fa2csm2091579ljn.69.2023.07.23.06.58.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Jul 2023 06:58:24 -0700 (PDT)
To: gregkh@linuxfoundation.org
Date: Sun, 23 Jul 2023 16:58:22 +0300
Message-Id: <20230723135822.5362-1-halip0503@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <2023072335-penniless-coleslaw-3aac@gregkh>
References: <2023072335-penniless-coleslaw-3aac@gregkh>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Alexei Filippov The lack of checking
 bmp->db_max_freebud
 in extBalloc() can lead to shift out of bounds,
 so this patch prevents undefined
 behavior, because bmp->db_max_freebud == -1 only if there is no free space.
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [halip0503[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [halip0503[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.180 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.180 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qNZbT-00010M-Kd
X-Mailman-Approved-At: Mon, 24 Jul 2023 14:28:40 +0000
Subject: [Jfs-discussion] [PATCH v4] jfs: validate max amount of blocks
 before allocation.
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
From: Aleksei Filippov via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Aleksei Filippov <halip0503@gmail.com>
Cc: shaggy@kernel.org, halip0503@gmail.com,
 syzbot+5f088f29593e6b4c8db8@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Alexei Filippov <halip0503@gmail.com>

The lack of checking bmp->db_max_freebud in extBalloc() can lead to
shift out of bounds, so this patch prevents undefined behavior, because
bmp->db_max_freebud == -1 only if there is no free space.

Signed-off-by: Aleksei Filippov <halip0503@gmail.com>
Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Reported-and-tested-by: syzbot+5f088f29593e6b4c8db8@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?id=01abadbd6ae6a08b1f1987aa61554c6b3ac19ff2
---
Changes:
Fix commit message.
 fs/jfs/jfs_extent.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/jfs_extent.c b/fs/jfs/jfs_extent.c
index ae99a7e232ee..a82751e6c47f 100644
--- a/fs/jfs/jfs_extent.c
+++ b/fs/jfs/jfs_extent.c
@@ -311,6 +311,11 @@ extBalloc(struct inode *ip, s64 hint, s64 * nblocks, s64 * blkno)
 	 * blocks in the map. in that case, we'll start off with the
 	 * maximum free.
 	 */
+
+	/* give up if no space left */
+	if (bmp->db_maxfreebud == -1)
+		return -ENOSPC;
+
 	max = (s64) 1 << bmp->db_maxfreebud;
 	if (*nblocks >= max && *nblocks > nbperpage)
 		nb = nblks = (max > nbperpage) ? max : nbperpage;
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
