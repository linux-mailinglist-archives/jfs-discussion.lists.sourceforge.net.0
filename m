Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EFAB871C8
	for <lists+jfs-discussion@lfdr.de>; Thu, 18 Sep 2025 23:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m535hHcWqcPbNoRRqRtBZeNOFK0nP1SzSOQElHK72Yo=; b=fUEMvGGo4XmXcFccRHMWMjqT5S
	AJ0It3ZA4FdKvaUS28fEyqhPBpYH5xesN4HZOoztjkgZ5cGJgGfcS5h6sTmpqH0MZdXDh5xZiptSZ
	ABGXlipV6AzvPclJrmNV6BHlZ5Ib22SmM3DwUY3w/3I6II90th340VHaf133/mp5ChoA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uzM6P-0002ji-B4;
	Thu, 18 Sep 2025 21:23:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pedrodemargomes@gmail.com>) id 1uzLuQ-00089e-HS
 for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Sep 2025 21:11:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x1e65N4mSYgYj4bNQD+ee0xPVC5irAb94SbFNc9xAbU=; b=NMwT5BMHljf7n27ej/guNd5w1w
 nsslnNAtH7TJmn8JBvNrrik0p/ONa6SxhXvfkfLdPH6SjrPVEA06n4MORooxe2sJkbFybF70DKc0W
 pxRFPIXwWn8QMEHeAB1BgvkfsxyrqPPDpWqH14vUq+Ityq69XauaijZTO8BlFLj18uYU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x1e65N4mSYgYj4bNQD+ee0xPVC5irAb94SbFNc9xAbU=; b=gVQnwYGl9+cAd9I4JHeWq2wjIF
 S5EHIrivAUCkLyxhjLq5DZJ/IS3baKHwS/7DMYti6A6nJLKAVtWNMvt1M8V5uEuxy4jb1UZSGMte3
 uXtFr/nDFfWu4Cqm6m4dTq7bBmPbEjG/PpfwQOWnF2VdmbXMobp3SOhcFExfmpU3yFOw=;
Received: from mail-pl1-f169.google.com ([209.85.214.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uzLuQ-0002D0-0C for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Sep 2025 21:11:18 +0000
Received: by mail-pl1-f169.google.com with SMTP id
 d9443c01a7336-24cde6c65d1so14298095ad.3
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 18 Sep 2025 14:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758229867; x=1758834667; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=x1e65N4mSYgYj4bNQD+ee0xPVC5irAb94SbFNc9xAbU=;
 b=Cge0TDJPpbU8K/KfrRARHn5N3LopNfg8nsmbN5BP9VbV/ZyUkcb/GMWprrytvEU8aX
 xcN7jg78hClCKPYsTjtynD1lGVEEiQnPYN17KZt5f+5Wx7HrtiF8OfpS59hIlTDggZkH
 cRHEg/WwQQBIbD9J9dsAZymy2zo5CgN7QqA10LnfzXFEhLoYGBUWBNKwNnOnFjlHVQtq
 M4NmGkuxPoqdmlJ4HqxUmfQ2BFv2XL9IkczzVPIiun2DbCXmbqlMauVFC3MwJitaesDR
 4opubVIbULTRwXv1mgaTqvneKwtxKudFQ11oYv/x8zIU6V6EJUojloH9grzz0XQEq7Xt
 Fg2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758229867; x=1758834667;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=x1e65N4mSYgYj4bNQD+ee0xPVC5irAb94SbFNc9xAbU=;
 b=hNN/7ttpSq/kM0yG6ariNAmuXkqXwinuvsCXcibMV/OQ3pxnr2phyVOJ239SbqT4L4
 kF/bBWnZr6UiYvc9PNZoZJVcNvSePwCPanGK7YTkMvATHyUlG3ZJUjE2+DiliOGJ7Hal
 pVLzDEvsw/Uf913IkBatzg3KZxzGDn9tI/x0WyMuc4W4C1M9rUCfCqnm13H/cF1InqeA
 NSUWIqrUduTakxjcY76vNREHfOs0KLrMeHyK2kx9GFAplI4LBEnmMuzVqZAQ2IsiN2e5
 0geUvoErwwrsYtm9QYtb/gEV6pbEs+Orbu4Ef1JQurtxlLwihXQXFxzwGrQjZgTDlqgG
 nsMA==
X-Gm-Message-State: AOJu0Ywf1MbrhARUAP48gulIDlht4Sal7/2AtasCcbuwj2CK6IYFY0UU
 /qpoFyw2bM1jAH6znHsXSqC+jhW97rfnIzCX8xyyxox50TFKleT8rUWQ
X-Gm-Gg: ASbGncsoFK/KENAeLSJxJmJ6kACCJLwjqTk7X+R5dT3C18sAfI4rXYQcDp16aHYLQ5r
 pmPHBVZgbLdLqnMnknKc5MPRRN2lxj3uSOSiVmuz2id7EhARBEm+d3EoTvY76uC2RYvUBcgCbyV
 D9I/AocYM7AwfUdCmyPoKzYrVBYxAFY/dTvhZxmRswHLMqflNVGTbXMA3WSIxcJdQVUDNQ9QpOz
 gDuc7lZdkTHxMNqiPo+ktuRGeu+t21qldL5Lm3HeKbEzS63vcY80+lE9QDc6zSGKdNhyLFfbqg1
 Ano+rIgJTikmgmnsdefYccGASPBqDERH3nqwDzqt21kGNoZa+12QA6qg4XANKlwWSHst/qe1hLA
 LGcZHAv9dYjVMzGKkZ3wGcUQOfl+pZJH8FTZ2RGSfuMdIQw==
X-Google-Smtp-Source: AGHT+IG75frq5+oHc/0AU9MSRl+oyX7SQoTS2CFYbsqXBDqcXb2zLzk1a39sNOJDFsiQszUntSpGfQ==
X-Received: by 2002:a17:902:ce0f:b0:25c:4b44:1f02 with SMTP id
 d9443c01a7336-269ba51ecd8mr14561345ad.46.1758229867292; 
 Thu, 18 Sep 2025 14:11:07 -0700 (PDT)
Received: from ryzoh.. ([2804:14c:5fc8:8033:edf5:239a:a9e8:d865])
 by smtp.googlemail.com with ESMTPSA id
 98e67ed59e1d1-3309c81f50bsm93135a91.23.2025.09.18.14.11.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Sep 2025 14:11:07 -0700 (PDT)
To: syzbot+4f9c823a6f63d87491ba@syzkaller.appspotmail.com
Date: Thu, 18 Sep 2025 18:04:14 -0300
Message-Id: <20250918210414.15022-1-pedrodemargomes@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <67d9cf78.050a0220.3657bb.000f.GAE@google.com>
References: <67d9cf78.050a0220.3657bb.000f.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: #syz test --- fs/jfs/jfs_dtree.c | 8 ++++++++ 1 file changed,
 8 insertions(+) diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c index
 ab11849cf9cc..b30f57304c09 100644 --- a/fs/jfs/jfs_dtree.c +++
 b/fs/jfs/jfs_dtree.c
 @@ -2129,6 +2129,14 @@ int dtDelete(tid_t tid, next_index [...] 
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
 [209.85.214.169 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uzLuQ-0002D0-0C
X-Mailman-Approved-At: Thu, 18 Sep 2025 21:23:39 +0000
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 Pedro Demarchi Gomes <pedrodemargomes@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

#syz test

---
 fs/jfs/jfs_dtree.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index ab11849cf9cc..b30f57304c09 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -2129,6 +2129,14 @@ int dtDelete(tid_t tid,
 					next_index = -1;
 				else {
 					stbl = DT_GETSTBL(np);
+					if (stbl[0] < 0 || stbl[0] >= DTPAGEMAXSLOT) {
+						jfs_err("JFS: Invalid stbl[0] = %d for inode %ld, block = %lld",
+							stbl[0], (long)ip->i_ino, (long long)le64_to_cpu(p->header.next));
+						DT_PUTPAGE(nmp);
+						DT_PUTPAGE(mp);
+						return -EIO;
+					}
+
 					ldtentry =
 					    (struct ldtentry *) & np->
 					    slot[stbl[0]];
-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
