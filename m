Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F28B8B98D
	for <lists+jfs-discussion@lfdr.de>; Sat, 20 Sep 2025 00:58:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=i6lC6pbpXcrMKfk0x5/j2D0mUoEI7RSZrzs4EbckU60=; b=Hjzk5YyzYDuabAuwgOlP7TDDb7
	2F7YFfRGjOZNcuISyg67rqRfrHGCq9pN3NDc/m7jrUQ/sKpniDVUzknjKto7gcBgAapt+nfKsXZit
	ZXY55QDuy7Du4hyQ8ans5Q1ma3/H3qqfeJU7jmaRqJZgHm4wa0pOxygpzldWXfdfeDIU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uzk35-0000kF-Oy;
	Fri, 19 Sep 2025 22:57:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pedrodemargomes@gmail.com>) id 1uzk34-0000k8-8h
 for jfs-discussion@lists.sourceforge.net;
 Fri, 19 Sep 2025 22:57:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NhIXosOdDy2EopoBUKjBrkEuu2zYbqQiI3aooKTa/dk=; b=lPMLbNtWNt3/PMHxJzFkDJ+VK2
 zEAi/VrdhzQ89ZhT5+c4mwfx1nfWae7BVCRseYlNQN5qXk3FBQyBPae9159JhTEjpJvSMOqUi9VWc
 Wt465SK8ipyq+9sg+Hf9JFUCvGrAdumDpxuPW6JIxQ1/hiNmwlY3qWx4SzfYKdnSVhMg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NhIXosOdDy2EopoBUKjBrkEuu2zYbqQiI3aooKTa/dk=; b=V
 5x0f9p2RCyETz5Txj9E5cwbEtS9eymklxLk7UXB8k+wxt4IumMXfWdKU3bI/IHNBsT6XX6zQvH4O+
 8v+dd1XYu5QzcfO1iq68/Zb5goU/jpPJU/WtfOFeH2m2AL1c3sWU9v02y9dEqMfgjaBuIsYT0KMnW
 R0ybPaKqRpTerxeg=;
Received: from mail-pf1-f172.google.com ([209.85.210.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uzk33-0008JK-NS for jfs-discussion@lists.sourceforge.net;
 Fri, 19 Sep 2025 22:57:50 +0000
Received: by mail-pf1-f172.google.com with SMTP id
 d2e1a72fcca58-7724df82cabso3263088b3a.2
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 19 Sep 2025 15:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758322664; x=1758927464; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=NhIXosOdDy2EopoBUKjBrkEuu2zYbqQiI3aooKTa/dk=;
 b=lW/XQxXg410ZaDA5afKMkk8IibaAX+UjaDSZ8tDd+2yDg9IhBY05t1MFnIYjXHB1he
 9PzwhWJiCJl0LzqMlQKPufEtcFsxp9LRt+YauKGEux2jXHWV/TTLnUnxcX8Tx38rI0ch
 6RwYD9ff4ScKO87Xl7eQxnmLCSozzl8UL9ci/45gJhYIr17ABXY571qzZBxsNYrZCmW7
 XqdQURaKWdVR1f09fA92SGkWFSsd77t1n1CylAEpCKVOmu2HAcaPUXhXho7+IaWkx962
 BUMOMBHoozo0aCDDP6Jaew1iz9uvT5qGd7SZnJCisgJF20CP+RAqkKgQ33GceRnvekLD
 MUPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758322664; x=1758927464;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NhIXosOdDy2EopoBUKjBrkEuu2zYbqQiI3aooKTa/dk=;
 b=RNOc8MCcwLRBmA2EGXFuqAft+wXQwsqqBGkZQIU6OLAwfb+wWvfXFWoelQiTbml6UE
 lcho3j9U5thx5O+4XP8LUdDiZ6SOxzbM5qO+BPJHpxA5QON4P77DTui53qOtaLXqZa2l
 TRheT1wU97Svgv12amnDS/NgM+lign5W0a6To2AQXTgIMkCFhkICwp3I9bIt5JWZRliU
 UzcFgkNJ8b4tlDJ9p5/QnLjyY3MWK4sdKMJX6Ho1593nuha49DOxnTNSDidU0A6JJBxF
 yBd4G+JUvOwyXehH1ULV4FpTc7LeEe1SRo6FyWnXmzSjj6xYE9/h3N3+id2ApFVOPy3s
 h/ew==
X-Gm-Message-State: AOJu0YwhSJlmi9PDUHpmsaeOvrp+SFS9boRhMzLtjIjSOP6pqN2Vgm7S
 cK27KYN7eJLCU+JOClNxlzZoap6E7vYHFj7VSssqLTb9h2SvmQQl3amg
X-Gm-Gg: ASbGncuLyEw0j9pdzgHpjlmKmmPsPoW+Htt9TnVoSuKlTB1sHBGR9RmRWLPOBOB2oyh
 vdIHgQjM3/1pwVI8/dLlHzJbTbxed4jZDxGDU/YHmL8Kov8nBvqWFUxMxBarjT8U22DlAMH3N+U
 BbYaVKv0fG6p2Yw+ZC9+Edb4IL3X8XuEJGM/e3zxVbpCXYz7KXjVHBaZTpQ2FwEXefYygVRLV+s
 3SHgMBeacMmOgVevTOp/IMtRdiD5txgxPYr0izAP9UuQ+KZISZpDKT7MT/vL/SuSmos1fyt+YNG
 FnKfk8RgNvlYVevQqxtoFwXOehD3hVT+3E+RGrLeJnrlBsdyTdr1xhD93/5irw4/owWqnmVOkHC
 bGTLO0rUX6eI690Ym0iu8r08sFc0=
X-Google-Smtp-Source: AGHT+IEiOp5XpCYydQDo5Me1xAYoKRo7QBxD5eBN27cXRrzJb2ckyIxHseriZXp7yvvaw8Icx8AFHA==
X-Received: by 2002:a05:6a21:e083:b0:262:66d2:8250 with SMTP id
 adf61e73a8af0-29277f958f9mr7232957637.54.1758322663994; 
 Fri, 19 Sep 2025 15:57:43 -0700 (PDT)
Received: from ryzoh.. ([2804:14c:5fc8:8033:e737:a742:1adb:21bd])
 by smtp.googlemail.com with ESMTPSA id
 41be03b00d2f7-b5515eaf0ccsm3506376a12.43.2025.09.19.15.57.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Sep 2025 15:57:43 -0700 (PDT)
To: shaggy@kernel.org,
	duttaditya18@gmail.com,
	ghanshyam1898@gmail.com
Date: Fri, 19 Sep 2025 19:50:55 -0300
Message-Id: <20250919225055.106808-1-pedrodemargomes@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  stbl is s8 but it must contain offsets into slot which can
 go from 0 to 127. Add a bound check for that error inside dtDelete function.
 Reported-by: https://syzkaller.appspot.com/bug?extid=4f9c823a6f63d87491ba
 Signed-off-by: Pedro Demarchi Gomes --- fs/jfs/jfs_dtree.c | 16
 +++++++++++-----
 1 file changed, 11 insertions(+), 5 delet [...] 
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
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.172 listed in wl.mailspike.net]
X-Headers-End: 1uzk33-0008JK-NS
Subject: [Jfs-discussion] [PATCH] jfs: Add check for array bounds in dtDelete
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
Cc: syzbot+4f9c823a6f63d87491ba@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Pedro Demarchi Gomes <pedrodemargomes@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

stbl is s8 but it must contain offsets into slot which can go from 0 to
127.

Add a bound check for that error inside dtDelete function.

Reported-by: syzbot+4f9c823a6f63d87491ba@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=4f9c823a6f63d87491ba
Signed-off-by: Pedro Demarchi Gomes <pedrodemargomes@gmail.com>
---
 fs/jfs/jfs_dtree.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index ab11849cf9cc..c200b37f4562 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -2129,11 +2129,17 @@ int dtDelete(tid_t tid,
 					next_index = -1;
 				else {
 					stbl = DT_GETSTBL(np);
-					ldtentry =
-					    (struct ldtentry *) & np->
-					    slot[stbl[0]];
-					next_index =
-					    le32_to_cpu(ldtentry->index);
+					if (stbl[0] < 0 || stbl[0] >= DTPAGEMAXSLOT) {
+						jfs_err("JFS: Invalid stbl[0] = %d for inode %ld, block = %lld",
+							stbl[0], (long)ip->i_ino, (long long)le64_to_cpu(p->header.next));
+						next_index = -1;
+					} else {
+						ldtentry =
+							(struct ldtentry *) & np->
+							slot[stbl[0]];
+						next_index =
+							le32_to_cpu(ldtentry->index);
+					}
 					DT_PUTPAGE(nmp);
 				}
 			}
-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
