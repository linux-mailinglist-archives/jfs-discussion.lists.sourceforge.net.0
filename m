Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8073C75F9E2
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Jul 2023 16:29:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qNwYD-00019t-4x;
	Mon, 24 Jul 2023 14:28:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <halip0503@gmail.com>) id 1qNXnM-0002qs-VW
 for jfs-discussion@lists.sourceforge.net;
 Sun, 23 Jul 2023 12:02:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jp84CK0/t53LIziRQtMnNYNguwF9Niz8BKJjpaj5EsQ=; b=DMGq6KHQh0wsrv4ZtwNV/nayuJ
 /qUQrf5NmABR4O5AElyRim+Av7fER9LbY+yIjqXu6LQ5NG0lMv3HhGBLzb1NYAXhkQ9nnHpjXlGPs
 W9e5T2slQB38NGYCjD1imqJTmcf2Yd8/78LtJC6l5050NpisYXrJSidydOvPVd444pxM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jp84CK0/t53LIziRQtMnNYNguwF9Niz8BKJjpaj5EsQ=; b=do/mI9eViNbsHcwV9ppIzoH321
 aQwajfBeTstKz9Z36ERZG4Gyxx1+Vu1N9vGwrHzl7QwEkRvF+gs9LSa9D+kXFu7WZF67sjqM3OsiF
 Z4k8aQUNrppI1hFwOpxQBNm1jyPzEraUW5Up7yTKbldvcLxvbqkOpXBZNgYaCd0RX3qY=;
Received: from mail-lj1-f173.google.com ([209.85.208.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qNXnI-0006Zj-7O for jfs-discussion@lists.sourceforge.net;
 Sun, 23 Jul 2023 12:02:40 +0000
Received: by mail-lj1-f173.google.com with SMTP id
 38308e7fff4ca-2b74310566cso49527341fa.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 23 Jul 2023 05:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690113746; x=1690718546;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jp84CK0/t53LIziRQtMnNYNguwF9Niz8BKJjpaj5EsQ=;
 b=SsQmrSLsSZj31ndKi/URN5NngEUc5GwOSe1IBIddkJfba3p0Hb+/I67WBvzQ8jg3lJ
 OJ1/XT8Yq3mhwdIdbGSxT/gY47hLyzA3nBssatWk2Z0TCiJ1Mo7RPqtAL5lOESKPB3HW
 KqOJ+8nLzr5KIEkhKWrq0CF6ofjSAAjwb6htrdorLUJqHNx5Iu/irqCwPXPuoAxUWtzs
 MK4yFmR8IjRKIQXrVgzfWEHGkANqurMz0GuZtYge5MA3iNDkko1+TAllLueMnlBmRwRX
 jV5nmde+YKtOAUdZw2PCXnXTcOme3rLSA1Ic6y+jRv+zPtrfXUf2gn/B7yeQAJ3lu3Id
 mj5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690113746; x=1690718546;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jp84CK0/t53LIziRQtMnNYNguwF9Niz8BKJjpaj5EsQ=;
 b=feZlLG8ljdULKRCX1VvLRH3JUBmxrf6bY56Y+KsXB9Hvi/0chsl3RmtzhnBXQj8UEe
 KB8xzsVG9GbEQ6vkj3vcQUx0bXb5utxXCg55W//4Exh7DjqbQzxGLICXzn1CTi49xDN6
 GBwN9JqvzVRvsGl/I+rSDe+eGvRDLb6IqZ+COG+TykG6PCU1/eIZyncOoRDtZlbNiQUJ
 DcuMeNFwloA82MG7srRphq3cUFfvNRxgxDxEiyP9EKGXX/7SFyRKXw0V39Z3ya4b7pXu
 5ObyhHFun7/zJDthhW+pfB9PXg0UxSbFP0jNzZBCdkDp9vw3QaTjG/zjN8pO4uWxPpVj
 tIeg==
X-Gm-Message-State: ABy/qLa0Pq/1Z/WZOzbhMfs9PGXW4JmZFPvazQULZqNOjalUQbEKWkND
 B4IBs6t/TAESq0Kn7cd/AOqJDPX0FLvLtxCvJec=
X-Google-Smtp-Source: APBJJlHRkKReSufvhMX5SHEhWtQf0LH13mHE4Jd7TZJ7Ubo6R/iTXzxsHoyuVRUdqaNc/tnft7iteg==
X-Received: by 2002:a2e:b0e2:0:b0:2b6:e13f:cfd7 with SMTP id
 h2-20020a2eb0e2000000b002b6e13fcfd7mr4575889ljl.4.1690113745934; 
 Sun, 23 Jul 2023 05:02:25 -0700 (PDT)
Received: from halip-Pc.42.fr ([93.188.41.70])
 by smtp.gmail.com with ESMTPSA id
 5-20020a05651c008500b00295a96a0f6csm2043034ljq.102.2023.07.23.05.02.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Jul 2023 05:02:25 -0700 (PDT)
To: gregkh@linuxfoundation.org
Date: Sun, 23 Jul 2023 15:02:09 +0300
Message-Id: <20230723120209.7963-1-halip0503@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <2023072251-spokesman-zebra-908d@gregkh>
References: <2023072251-spokesman-zebra-908d@gregkh>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Alexei Filippov The lack of checking
 bmp->db_max_freebud
 in extBalloc() can lead to shift out of bounds,
 so this patch prevents undefined
 behavior, because bmp->db_max_freebud == -1 only if there is no free space.
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.173 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [halip0503[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [halip0503[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.173 listed in wl.mailspike.net]
X-Headers-End: 1qNXnI-0006Zj-7O
X-Mailman-Approved-At: Mon, 24 Jul 2023 14:28:40 +0000
Subject: [Jfs-discussion] [PATCH] jfs: validate max amount of blocks before
 allocation.
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
