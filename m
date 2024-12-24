Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F45F9FBF74
	for <lists+jfs-discussion@lfdr.de>; Tue, 24 Dec 2024 16:10:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tQ6Xd-00082v-7T;
	Tue, 24 Dec 2024 15:09:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kovalev@altlinux.org>) id 1tQ6TB-0005Fq-RO
 for jfs-discussion@lists.sourceforge.net;
 Tue, 24 Dec 2024 15:05:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pz0NemaENUHbt/b4l4ey31iFCixDrQQjWNlfB7xiVas=; b=KX3CyBMJpfUO7Aif8XnaLE2R3G
 x24ShpJrAwGGFyeFj1KKSqg0UMxPr+VjfkgJCwz3RQxqFlfnEBw4JZlEMXh85r3D9GVqsMl6Hd+w7
 7vgkJzlxGXCwgCX39KdyDQ+9Kq6sFMupRXaKZ051YIz555tg73rCYgn66+s38/LigNw0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pz0NemaENUHbt/b4l4ey31iFCixDrQQjWNlfB7xiVas=; b=K
 iAJ5R0t1U+3xS23TstOyMC+EKuwxbzOyZ+wxXrqdnke4wpEXOZy9JeQ0QF/iElepI4RjD9/F0/ZHv
 qNbx6dhtA1eUYNmhoIatqfJvXaMtM3QpRvk+BV3EQ0sDAI3L5gpfEmlu8GaSv8TKvESyxT+AG6O88
 D1PNnKbcbKPjWMVk=;
Received: from air.basealt.ru ([193.43.8.18])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tQ6TB-00028g-SM for jfs-discussion@lists.sourceforge.net;
 Tue, 24 Dec 2024 15:05:14 +0000
Received: from altlinux.ipa.basealt.ru (unknown [178.76.204.78])
 by air.basealt.ru (Postfix) with ESMTPSA id 4E17C2333B;
 Tue, 24 Dec 2024 17:49:27 +0300 (MSK)
From: Vasiliy Kovalev <kovalev@altlinux.org>
To: Dave Kleikamp <shaggy@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 Matthew Wilcox <willy@infradead.org>,
 Christian Brauner <brauner@kernel.org>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Tue, 24 Dec 2024 17:49:12 +0300
Message-Id: <20241224144914.976419-1-kovalev@altlinux.org>
X-Mailer: git-send-email 2.33.8
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  These two patches add read-only checks in JFS functions to
 prevent attempts to modify a read-only filesystem, which could lead to NULL
 pointer dereferencing. Reported-by:
 syzbot+4e89b5368baba8324e07@syzkaller.appspotmail.com
 Closes: https://syzkaller.appspot.com/bug?extid=4e89b5368baba8324e07 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [193.43.8.18 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [193.43.8.18 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1tQ6TB-00028g-SM
X-Mailman-Approved-At: Tue, 24 Dec 2024 15:09:45 +0000
Subject: [Jfs-discussion] [PATCH 0/2] jfs: add checks read-only to prevent
 NULL pointer deref
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
Cc: syzbot+4e89b5368baba8324e07@syzkaller.appspotmail.com,
 lvc-project@linuxtesting.org, kovalev@altlinux.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

These two patches add read-only checks in JFS functions to
prevent attempts to modify a read-only filesystem, which could
lead to NULL pointer dereferencing. 

Reported-by: syzbot+4e89b5368baba8324e07@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=4e89b5368baba8324e07

[PATCH 1/2] jfs: add check read-only before txBeginAnon() call
[PATCH 2/2] jfs: add check read-only before truncation in jfs_truncate_nolock()



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
