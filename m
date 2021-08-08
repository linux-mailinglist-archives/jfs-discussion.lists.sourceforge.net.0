Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C653E468C
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 15:28:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mD5Jh-0004ct-Vk; Mon, 09 Aug 2021 13:27:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mClcJ-0008Gy-CD; Sun, 08 Aug 2021 16:25:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2ru7GKwYyGIOvB5trDpiWgs23q8XpNsNd5eom2tZMXg=; b=LRh79LKXJM3Nbf4x1aDLCU7bPD
 kmyJnRTO4zDYchE0c752pEJLO9+vC59kThNhhZmerTJ9X05IawigyLVhDTyW4NJSjAfp7G5rAs7E0
 xctT8huTNn/JIFgHzMT7SK2+RMPlCM4ncKfDhf2VcEAq1YqHYsGtKneW5/T2Yj4YuGwQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2ru7GKwYyGIOvB5trDpiWgs23q8XpNsNd5eom2tZMXg=; b=Tx0byX3vf73dA9BFZtoXuwBZ0y
 AXTqM2C6PrnNzsVaDLgecZcm4draTcWkKcX/CDx+kEJBbERbKRjCQxzVdBgUw0THEQDv92+MmX8JQ
 HerJHlftZWLsIySg17L9stTh3OsoEFPWUsCTT7NsFELprlrX90nKelmu2gWsqGwY5kO8=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mClcD-00GyXa-1J; Sun, 08 Aug 2021 16:25:39 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5809961056;
 Sun,  8 Aug 2021 16:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628439916;
 bh=fanD9czqaaMtK9UnS9fAwgRyMrmAp6yCEcGnrD3HYPw=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=GYD12yRjt7qyYUXZLq+m/e9D92tBrj/8w73BA2j6sPM90gsrq3rYf8hz1+VhXmVn9
 ch3jqNRVSQMM8lfaUtjkLOWq30d85k4djVd010BCTj/7uJ0AjtLtID+sunAi711FcY
 XThtCU7Puq8LrJxst9ACp/2vbVwsMD0GREuFvfgevfk6JL8C3BSnRJlHE920rbeGFm
 RoxW6XixLunNu0CqeOFaUhRbd0Cw2hA3UsSplBBupo/wUvrnMAP4boSbDnthPn+Yn0
 7nY2VKqHWd1oLioL09vBAvkD2h2LE03NlXWTTzmgq/o784MC6DWlkdFyC5F7iipnm4
 UbCDQFx9OOMVA==
Received: by pali.im (Postfix)
 id 18AB11430; Sun,  8 Aug 2021 18:25:16 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jan Kara <jack@suse.cz>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 "Theodore Y . Ts'o" <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Salah Triki <salah.triki@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dave Kleikamp <shaggy@kernel.org>, Anton Altaparmakov <anton@tuxera.com>,
 Pavel Machek <pavel@ucw.cz>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>,
 Christoph Hellwig <hch@infradead.org>
Date: Sun,  8 Aug 2021 18:24:40 +0200
Message-Id: <20210808162453.1653-8-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210808162453.1653-1-pali@kernel.org>
References: <20210808162453.1653-1-pali@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mClcD-00GyXa-1J
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:27:40 +0000
Subject: [Jfs-discussion] [RFC PATCH 07/20] befs: Fix printing iocharset=
 mount option
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

TW91bnQgb3B0aW9uIGlzIG5hbWVkIGlvY2hhcnNldD0gYW5kIG5vdCBjaGFyc2V0PQoKU2lnbmVk
LW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KLS0tCiBmcy9iZWZzL2xpbnV4
dmZzLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9mcy9iZWZzL2xpbnV4dmZzLmMgYi9mcy9iZWZzL2xpbnV4dmZzLmMK
aW5kZXggYzFiYTEzZDE5MDI0Li5lZDRkM2FmYjg2MzggMTAwNjQ0Ci0tLSBhL2ZzL2JlZnMvbGlu
dXh2ZnMuYworKysgYi9mcy9iZWZzL2xpbnV4dmZzLmMKQEAgLTc3OCw3ICs3NzgsNyBAQCBzdGF0
aWMgaW50IGJlZnNfc2hvd19vcHRpb25zKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IGRlbnRy
eSAqcm9vdCkKIAkJc2VxX3ByaW50ZihtLCAiLGdpZD0ldSIsCiAJCQkgICBmcm9tX2tnaWRfbXVu
Z2VkKCZpbml0X3VzZXJfbnMsIG9wdHMtPmdpZCkpOwogCWlmIChvcHRzLT5pb2NoYXJzZXQpCi0J
CXNlcV9wcmludGYobSwgIixjaGFyc2V0PSVzIiwgb3B0cy0+aW9jaGFyc2V0KTsKKwkJc2VxX3By
aW50ZihtLCAiLGlvY2hhcnNldD0lcyIsIG9wdHMtPmlvY2hhcnNldCk7CiAJaWYgKG9wdHMtPmRl
YnVnKQogCQlzZXFfcHV0cyhtLCAiLGRlYnVnIik7CiAJcmV0dXJuIDA7Ci0tIAoyLjIwLjEKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1
c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lv
bgo=
