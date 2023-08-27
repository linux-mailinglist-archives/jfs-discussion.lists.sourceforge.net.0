Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0039278B6A7
	for <lists+jfs-discussion@lfdr.de>; Mon, 28 Aug 2023 19:42:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qagFz-0004AA-8G;
	Mon, 28 Aug 2023 17:42:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qa7y1-0003eF-NZ
 for jfs-discussion@lists.sourceforge.net;
 Sun, 27 Aug 2023 05:05:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w0rHx36EtjFL/T0ZOtQOOpsSvLpc8KOUwP8osiOZIL0=; b=XGx4NLfPvfNE6jHNjeScE6pW6N
 oEwUbVu5y/SLdPbIK/HN969HP0/CAV4HjykRLUljoGctLKwWd5+aMG5c//BIDDZW5tQphs1h7r37O
 ho1nmKDs907w9NX1PXL5nz2YAI7ai6aXCncDoTvqcxPhcT5ObZ/DG3lPaZdBUQViLf+g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=w0rHx36EtjFL/T0ZOtQOOpsSvLpc8KOUwP8osiOZIL0=; b=g
 pqpZ1D52bSJx48PJmQ7u0pyfGWPqMVtbgkd0NGNFUOctWTsa3SNBot5QrAwXTCYwVDga05NZOWEzO
 GRf+rqwq/IJJi9k0ZkgeiGPQfGSNJnhm6r7FSeZ3YIROdpvGINfa4Ib9SHPUTzgaNTjbT4mf3ZxKL
 HtD7+o/gx9nucu/A=;
Received: from mail-oa1-f51.google.com ([209.85.160.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qa7y0-00GjKo-BK for jfs-discussion@lists.sourceforge.net;
 Sun, 27 Aug 2023 05:05:42 +0000
Received: by mail-oa1-f51.google.com with SMTP id
 586e51a60fabf-1c4d67f493bso1619081fac.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 26 Aug 2023 22:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693112731; x=1693717531;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=w0rHx36EtjFL/T0ZOtQOOpsSvLpc8KOUwP8osiOZIL0=;
 b=i+eBNMdM4lSTpRFP24YehF6M912k+AQEeLx/6M+9vqHdKwP6B9zqoZpsmlTA6ulZgt
 ZxlgfxV7NTGJDSQ8HfDdT8yU6mVYv5uze24oHmDmTNbyJI+KocZt4rdslWqJojrZFWc/
 fA+K4zN2Wb3cr0fBvInfYDO8BwDizMl10AlFDmKIbg7wol02gH5mKC83CwpX7PHJz14o
 jCqiUeVSBOgzEwJKqYDml9pIBczMUjn03ovr1s98tqPoAePz1UnVzFjvWAUIjtyxnadr
 7mItSjjXIXhf/MBnYTP2zJkaZzWK8IVr52E3oAKGsATe65bLS4K0VI0SwTK+YBdJPI38
 LPhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693112731; x=1693717531;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=w0rHx36EtjFL/T0ZOtQOOpsSvLpc8KOUwP8osiOZIL0=;
 b=hgDerMuHqj2RVdhvUd8WqtEtSj+MONxiFuHNSxtMq6+0kiojUnjoN+tvVPOtBGhEqN
 0wnYgKHDH8HG8clNpf2rDc22S01+5TMtDnG53nWnEcgeb4JcUMTg4Skqq49hQfqHbwkq
 UPO3mJoXcWWvUvasEPxh9xEOtJae7jSZaiqq2w4gA2i+V31vm/ouxgA2yKo+MWLZ5ROW
 BQwYzmTuEJRSNadpazFsTb58Ooh0LxeiYNpGtY3dPC/1OM8L3sKDr/C7UfIw5m7IFEQi
 ERZ93cEI1ozWxVlRm47y63hfNw3tvdAjq0Auvo0HEjz8/+bxl+3LuuSvLXes+KYM92l2
 DRuw==
X-Gm-Message-State: AOJu0YxBFl9VDy/rucG/yX9J5qqr+d+31cW3YzKcP3nVJgg6ox88ZnT8
 vVbkceqkVcCw2t+SgDdMQyiIBb/PSZaSQ26m7zw=
X-Google-Smtp-Source: AGHT+IFV5CXGL6h7bvJSFe8twRRVDGSZWHsP7/eN8yNry07I+d213Z5bPkoQHWC2NlucLAqNjQ3NUg==
X-Received: by 2002:a05:6870:610b:b0:1bb:9846:94ed with SMTP id
 s11-20020a056870610b00b001bb984694edmr8627537oae.3.1693112730149; 
 Sat, 26 Aug 2023 22:05:30 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.178])
 by smtp.gmail.com with ESMTPSA id
 ci24-20020a17090afc9800b00265a7145fe5sm6169383pjb.41.2023.08.26.22.05.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Aug 2023 22:05:29 -0700 (PDT)
To: shaggy@kernel.org,
	liushixin2@huawei.com
Date: Sun, 27 Aug 2023 10:35:13 +0530
Message-Id: <20230827050513.364567-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Currently there is no bound check for number of logical
 blocks
 per page (bmp->db_l2nbperpage). Added the required bound check for the
 calculation of dmap. Reported-by:
 https://syzkaller.appspot.com/bug?extid=91ad2b52815a08caf4ea
 Fixes: 4d81715fc5df ("[PATCH] fs/jfs: Conversion to generic boolean")
 Signed-off-by: Manas Ghandat --- fs/jfs/jfs_dmap.c | [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.51 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.51 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qa7y0-00GjKo-BK
X-Mailman-Approved-At: Mon, 28 Aug 2023 17:42:29 +0000
Subject: [Jfs-discussion] [PATCH] jfs : fix shift-out-of-bounds in
 dbUpdatePMap
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
From: Manas Ghandat via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Manas Ghandat <ghandatmanas@gmail.com>
Cc: Linux-kernel-mentees@lists.linuxfoundation.org,
 jfs-discussion@lists.sourceforge.net, Manas Ghandat <ghandatmanas@gmail.com>,
 linux-kernel@vger.kernel.org,
 syzbot+91ad2b52815a08caf4ea@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Currently there is no bound check for number of logical blocks per
page (bmp->db_l2nbperpage). Added the required bound check for the
calculation of dmap.

Reported-by: syzbot+91ad2b52815a08caf4ea@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=91ad2b52815a08caf4ea
Fixes: 4d81715fc5df ("[PATCH] fs/jfs: Conversion to generic boolean")
Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
---
 fs/jfs/jfs_dmap.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index a3eb1e826947..6a5df296fdc8 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -467,6 +467,10 @@ dbUpdatePMap(struct inode *ipbmap,
 	lastlblkno = 0;
 	for (rem = nblocks; rem > 0; rem -= nblks, blkno += nblks) {
 		/* get the buffer for the current dmap. */
+
+		if (bmp->db_l2nbperpage > L2BPERDMAP)
+			return -EIO;
+
 		lblkno = BLKTODMAP(blkno, bmp->db_l2nbperpage);
 		if (lblkno != lastlblkno) {
 			if (mp) {
-- 
2.37.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
