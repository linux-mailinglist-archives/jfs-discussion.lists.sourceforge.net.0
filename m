Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D6FB9D46B
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Sep 2025 05:07:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VmavNxlBxrIFGpPfVJ40qkvZQQEAMGkNoqJekoGIqZI=; b=U7JlKhcYqGEwSE5uz11AcAol1V
	Bns+Qp3QLi0LgGPmLKddr064ascvQRyNJYBGLYGN1eC510UgX2OrzNr7iqXHplzXe6eCOwjK67iOx
	7xcjAksjw34yjiN6rf/N/2pv6/k36i+DifLJfKCdVpJlxWa+IEfIn9TDxCaYe85OrhsM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v1cJp-0005EW-NH;
	Thu, 25 Sep 2025 03:06:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pedrodemargomes@gmail.com>) id 1v1cJo-0005EF-0g
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Sep 2025 03:06:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FUYHClQS0G+S0WCTqbPbr6zqw1HbxOG9lfCaJDm6n0U=; b=nEO6YrPiZUtkC8zRxIiyEuaX2y
 wedeo0tO6xgLzBO8o0kfft0BwXjw3mP/GNn0tabIC58l4d08d/Oapd/X8CRiwIWFzWeXT56c8rTZd
 aS0dZU56qSbPpFIZoZwarJeP3PQtE+o5H7LQwwWGY5rfKZD2q0qB8FLMu9AJ8pSC42QI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FUYHClQS0G+S0WCTqbPbr6zqw1HbxOG9lfCaJDm6n0U=; b=V
 4PFSF3MMVN/a4JUnKJwQA1yUR/fBCiWCFvsb/1uiYL8v3rQZfu8eitGEGwNTpj8Af500uw8B+hbn1
 KbGEKLgZwHMTrFrqjLRBf4ILTjvu6xl0owj8fU9mUyzw8hYM5dJT1Ce6TZbsm6Q0KfvsUs/8t2XtL
 fuwM1fVKdA3XU+Y4=;
Received: from mail-pj1-f49.google.com ([209.85.216.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v1cJo-0003Il-AW for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Sep 2025 03:06:52 +0000
Received: by mail-pj1-f49.google.com with SMTP id
 98e67ed59e1d1-33082c95fd0so513069a91.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 24 Sep 2025 20:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758769607; x=1759374407; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=FUYHClQS0G+S0WCTqbPbr6zqw1HbxOG9lfCaJDm6n0U=;
 b=XR+q/sRevci+pzLr8vfkUiW9RHiBHtod79lSBvdpeQsQ2jSM2rJzlJP1fFJmIKUCLA
 s5Ah/57FVQqf5TrUPm1NqXmZXzaJ4apBlJo7uWn6kBx/5CG5BUIeVgBt6X9xa/pCcMhb
 SfBzov9StlMdiFpP4Uho8Uy5CvnG6WsjVQmjA1nPZtVTpV86CDZShl1fbBXB9tCZi3R1
 8VrV+TCTLQVnAX3C6bBsExXRI9YxvLElxdAHLOu38g8R5dqNSscszoF8DIZ8t9Ke3Z9O
 dAD8obaD/8AVrd8tVsi+9G+CBjAZ8jeQEY4Bkd4Lw37D9nWPX3DYefYva1wjp93ddM2O
 31FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758769607; x=1759374407;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FUYHClQS0G+S0WCTqbPbr6zqw1HbxOG9lfCaJDm6n0U=;
 b=n/FsPl5JC9BJPrqarJrry0khvGOyXDAqY+bvwj+IuB2JmUZ9/uLMaGFZWfPsZYT3ob
 TSb4VumGFYbmQctAtKWKnfAvbIRYV1U1+lbX5HnNJb1KxsH0BEv9xHSPs/kAOFK2rj8u
 pGwesZ/7ZXrkcaniA9+WMLghP952BnL1X4AKa9D0FlnbBB0liFLW7wTsd23VGW1aShQq
 89qXEGGkDsVDaTOQfiKTAxvC894rfj0bXuKXNWrw5S/W7734zjKncyKgtpU4pEcubpqx
 VAPoT0AZUFpDdSUYjEGb1L3bz5Z7nnENiR47uCnOtY/LFm8XJ8wZYPhR2jpGDs6vlVth
 SjFw==
X-Gm-Message-State: AOJu0YzEHl7c1c3zhn2GOULJ39lvdLG5wk2MJnl/mJeBt8/KRra/Xjgy
 baUXreEvqSuzK6b/dxnEasDy44x24qTlLKi1WTuaLiwla2sI5aDAXctL
X-Gm-Gg: ASbGncvmwiI6mPuy0cdKgBXsMilN4T52dKjIwc1Icc+nDsBiyyyFAZiMtLcLSizWcEK
 459G/vYKikiw0nIKh5EGF9v35t3UT1aBQR4m4Kx5PDG4UtmECV4ZmbnI0/bHHXSoBbETHEbg9Tx
 KJlDsFgC0+s4E3dvKXCn2pl/Pqofujz+D+cDWhRZ7YqC7+hPTMYgO7fzYKPugbPpCXvTH5KxTIl
 VxkXeHIuBTUK87T4lFQg9HQLecPj7cf1JTK6M847wx6DuQi0TJEzGoMmpYx8/6Z/ETM8tyfUZ/n
 krSatSUXKMpQFw6Kq6zgpgToa7nApY+66C1ZBQnB4RYlhgDrbym+1cHxn5NiaLd1wRDPzrs5tvH
 epwsrEZj4lOc6nw4zUfZq43XBUUr/I2THKn89yA==
X-Google-Smtp-Source: AGHT+IEQknUMrk+Hu+MnB2H8vzIQ0PVZiqSxzWqLwK4eimCwRKAxen25VgOT/kPDY9BAgpEVHW1bFw==
X-Received: by 2002:a17:90b:4f4b:b0:32e:859:c79 with SMTP id
 98e67ed59e1d1-3342a15e6b6mr2041639a91.0.1758769606572; 
 Wed, 24 Sep 2025 20:06:46 -0700 (PDT)
Received: from ryzoh.. ([2804:14c:5fc8:8033:da0e:8d21:9269:33ba])
 by smtp.googlemail.com with ESMTPSA id
 98e67ed59e1d1-33474f14e4bsm571669a91.28.2025.09.24.20.06.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Sep 2025 20:06:46 -0700 (PDT)
To: shaggy@kernel.org,
	duttaditya18@gmail.com,
	ghanshyam1898@gmail.com
Date: Wed, 24 Sep 2025 23:58:54 -0300
Message-Id: <20250925025854.8061-1-pedrodemargomes@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When reading im_l2nbperiext from disk, check if its value
 is valid. Since im_l2nbperiext is the log2 of a 32 bit number, its maximum
 value is 31. Reported-by:
 https://syzkaller.appspot.com/bug?extid=13ba7f3e9a17f77250fe
 Signed-off-by: Pedro Demarchi Gomes --- fs/jfs/jfs_imap.c | 4 ++++ 1 file
 changed, 4 insertions(+) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [pedrodemargomes(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.49 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v1cJo-0003Il-AW
Subject: [Jfs-discussion] [PATCH] jfs: fix im_l2nbperiext shift out of bounds
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
From: Pedro Demarchi Gomes via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Pedro Demarchi Gomes <pedrodemargomes@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Pedro Demarchi Gomes <pedrodemargomes@gmail.com>,
 syzbot+13ba7f3e9a17f77250fe@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

When reading im_l2nbperiext from disk, check if its value is valid.
Since im_l2nbperiext is the log2 of a 32 bit number, its maximum value is 31.


Reported-by: syzbot+13ba7f3e9a17f77250fe@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=13ba7f3e9a17f77250fe
Signed-off-by: Pedro Demarchi Gomes <pedrodemargomes@gmail.com>
---
 fs/jfs/jfs_imap.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index ecb8e05b8b84..6abeb78c9eb4 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -124,6 +124,10 @@ int diMount(struct inode *ipimap)
 	atomic_set(&imap->im_numfree, le32_to_cpu(dinom_le->in_numfree));
 	imap->im_nbperiext = le32_to_cpu(dinom_le->in_nbperiext);
 	imap->im_l2nbperiext = le32_to_cpu(dinom_le->in_l2nbperiext);
+	if (imap->im_l2nbperiext > 31) {
+		jfs_err("diMount: invalid im_l2nbperiext");
+		return -EIO;
+	}
 	for (index = 0; index < MAXAG; index++) {
 		imap->im_agctl[index].inofree =
 		    le32_to_cpu(dinom_le->in_agctl[index].inofree);
-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
