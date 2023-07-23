Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D255775F9DF
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Jul 2023 16:28:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qNwYD-0001A3-Cp;
	Mon, 24 Jul 2023 14:28:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <halip0503@gmail.com>) id 1qNZA6-0006I1-QR
 for jfs-discussion@lists.sourceforge.net;
 Sun, 23 Jul 2023 13:30:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nzYFzRzP7i0c6DYPDuN0yOXQ/LKGeHJaUfK0vwejrvA=; b=B+KjMm1rT1sgMErwWSBaPiPyII
 RM5ttYkvKfEVXRUPz20mKErahqC9hfKRFeumj1P3IWtAHFdoBokatZRGZuhFce/7fS8B4JlTz+fWD
 DFgsSGjqbnRs7/HOFVKBc8xAgeCixsGkd2Ea4RD7XBCHcVMGinKArtz4o3WEOwvWePCA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nzYFzRzP7i0c6DYPDuN0yOXQ/LKGeHJaUfK0vwejrvA=; b=QLxA51xzx0PKhDroh019cfhhpM
 lkjVslDSkKxr/cWcIQypVlZfGS1BU911JuxCAkNFpV8+zKdutf5wauUZxIWVrVx8sQ9jXDzuBSvnM
 6EEj+jYKHBS6S7dXO9iYSPjTCC5AOjsNLyW/TpTsjQIZAItNd773JfvZa7lvyNvBZXR8=;
Received: from mail-lj1-f172.google.com ([209.85.208.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qNZA3-00HIIs-U9 for jfs-discussion@lists.sourceforge.net;
 Sun, 23 Jul 2023 13:30:15 +0000
Received: by mail-lj1-f172.google.com with SMTP id
 38308e7fff4ca-2b95d5ee18dso50269321fa.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 23 Jul 2023 06:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690119002; x=1690723802;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nzYFzRzP7i0c6DYPDuN0yOXQ/LKGeHJaUfK0vwejrvA=;
 b=SuNbWUVBNcoIVYaGMiFhxCT87+Z8Iw8FIsxquqXDTEFGgrzVwzhQYX94n70Q39UsRf
 fjQ6canVSvU3et2bSgbSGipIVkwIQOIvljyPzqKp8gGEjlJGKn6649TzIcP0MV7DkmHy
 jRTvozh6JkyioHu96i/lRKZ5banbq4rd2y0K+sL4WdEIxNEZ72obmFGkDxWJZVrxgxQ+
 te4x2P2Ip8ra7byXZvO9ZoXpHQSY3iJwt++NO+gl5jiucfkZYnq8VhmqZHUYZVTj/z7X
 0YD/7IETFslDT5rtWGCqNXIVTLXEu76U5y/r7FFtyn01qehbH6zdNrP4+ISKdvn/Qtaj
 Kq4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690119002; x=1690723802;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nzYFzRzP7i0c6DYPDuN0yOXQ/LKGeHJaUfK0vwejrvA=;
 b=l9ks1iSjeZDx7aDD4RmJjn7F0jG7/H7Pb0X1vCSC8SLxr3hEm65idMqmpxJNKpglS6
 6a2QkMRHwJ95FrnCFD+ksIWATQM1mivJY/aWYzf/H8/coX5gdvRk658hx9cOlqYa19Wn
 /RvH6ADcFi5RB3M/fdIm8LsKOmk95+EzS6MRE7NesqbkuVC38XNe3hKWwUF99URnzs91
 qKZ2XaLRgLn1f1nBrf+N5WHYYCsTx4Wu+XcILW7PWYN/ZEVQmzbNUFJ/KYmQQQi69mnG
 seia1OYhiWb6APUheNvteE7swDVyF9oh9Zxl65NdMNzauxUfp3qcbPQLuVvW26RMWTrG
 7idA==
X-Gm-Message-State: ABy/qLYO8jzWXvuElpFPd2mPWxZOhTEiscpn81ZvTB7OLNN3KoBWC08H
 dqKhN3mbhY3F/iYRLhs0YCg=
X-Google-Smtp-Source: APBJJlHAqctAbylZ7n/HbAQDPO4nE2oqQlTJf+9jf9mG/GvyFj5oahtXRZRQ9VBTpMQxtDaeOFk+jA==
X-Received: by 2002:a2e:9058:0:b0:2b7:4078:13e0 with SMTP id
 n24-20020a2e9058000000b002b7407813e0mr4742383ljg.43.1690119001589; 
 Sun, 23 Jul 2023 06:30:01 -0700 (PDT)
Received: from halip-Pc.42.fr ([93.188.41.70])
 by smtp.gmail.com with ESMTPSA id
 k15-20020a2e240f000000b002b6eb5db863sm2158270ljk.43.2023.07.23.06.30.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Jul 2023 06:30:01 -0700 (PDT)
To: gregkh@linuxfoundation.org
Date: Sun, 23 Jul 2023 16:29:59 +0300
Message-Id: <20230723132959.4945-1-halip0503@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <2023072318-semantic-payee-0162@gregkh>
References: <2023072318-semantic-payee-0162@gregkh>
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
 [209.85.208.172 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.172 listed in list.dnswl.org]
X-Headers-End: 1qNZA3-00HIIs-U9
X-Mailman-Approved-At: Mon, 24 Jul 2023 14:28:40 +0000
Subject: [Jfs-discussion] [PATCH v3] jfs: validate max amount of blocks
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

Fix commit message.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
