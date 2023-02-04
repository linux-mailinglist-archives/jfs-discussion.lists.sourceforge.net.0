Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B97DB68AC1E
	for <lists+jfs-discussion@lfdr.de>; Sat,  4 Feb 2023 20:40:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pOOOI-00066r-6V;
	Sat, 04 Feb 2023 19:40:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <keescook@chromium.org>) id 1pOOOG-00066l-Kv
 for jfs-discussion@lists.sourceforge.net;
 Sat, 04 Feb 2023 19:39:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tjMR7K3b5Kxbe/ecjD43xajTi+1Ciwse0JLkSMzManQ=; b=hLsQgIjYxgwrWGWgU+skEIStok
 dVbg5dvPD16mI2/np0VMgIMKFabsipyj7/Ae3E6krQ5r4lVgvUYTXDuDKev6D9adsI/RqRahbymJg
 h/fNRhuXaQ0UV5NbuW19L+kMBNq+gmfkOqztwNH2TfKc1wm/zW/vCY8H0aznQCWgKzK8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tjMR7K3b5Kxbe/ecjD43xajTi+1Ciwse0JLkSMzManQ=; b=b
 fxgdr76B8J2DEd3uHx0XIQ+QpWf23BhzHnzOBXSzHUqGuUP7gTu+fhgjuXs55ZEo09MT7ca8gAHOI
 NLAQKg5QAs19IjEg4z0vjjN22IeLGpCN2G6j7SWPeUJgUEHKIeKyqIAGYI24BvDz+joGASkP43Gw1
 UnuglqxSYCFIRCg4=;
Received: from mail-vs1-f42.google.com ([209.85.217.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pOOO9-0006Wq-N6 for jfs-discussion@lists.sourceforge.net;
 Sat, 04 Feb 2023 19:39:57 +0000
Received: by mail-vs1-f42.google.com with SMTP id k4so8815863vsc.4
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 04 Feb 2023 11:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=tjMR7K3b5Kxbe/ecjD43xajTi+1Ciwse0JLkSMzManQ=;
 b=gP51lVE2s5bzt77ug4Jirt2sJ9KLq+2knjVg1vT6QkeQIv2jntI19xpKL/A3y5RIw4
 d1kDPxMQ5SJQihGsgSYiK74m9k41HQubx6Dzs3JIuQxjFGSzzx1Z1SK3npORpmHhViG9
 /hERkahCWqjLzZl7c6EgyDR9uQsfzpRCWAG2E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tjMR7K3b5Kxbe/ecjD43xajTi+1Ciwse0JLkSMzManQ=;
 b=X9vuW0zQIma6O+3F36fvdBwD6RbufZd/KCi2MhUVUGDw9PSVQZy4OJejpGLEz/WkyH
 +LXwUn/CusuIzgbziCN0PXgWNaBwUD/jOHvP6zBlinAplBiPPG004HF51FEd+aDVRWgC
 eg5dSQrbZZIns3K8zqvRlB430lUyPwNNkf7tx7Gp/QEL9u2zG5JmEBs3az5TxCAMw9kP
 EPinXO32Nm5grqWgkYeCIQoZOSU+X5P4T1JnV02TXfddJX2zWEyUi54khn0qxk/ZRMjh
 dD2S8R/MVw2HBXm1mYhGZbra7sPNYL9hJb87/8iUyKV8MzkI7erZuuGfLCa2x6dALA/u
 /EzQ==
X-Gm-Message-State: AO0yUKVRIXWsw9EsDo3cXUDHa0qJQmFUAwZOvHMztbnAPj3JSIzUH3+z
 9aZuRxRpH+g0fOqjWyfbO8qjbzmMpqiamZG9
X-Google-Smtp-Source: AK7set8Qy5ag0uw+C9t6p3KRMHFijC6yFjKLeaQsLbXKQJmtOfAue0KNa9fzYbjtw8f2q/9qK3HYDA==
X-Received: by 2002:a05:6a00:148c:b0:581:a8dc:8f95 with SMTP id
 v12-20020a056a00148c00b00581a8dc8f95mr17393606pfu.12.1675535637924; 
 Sat, 04 Feb 2023 10:33:57 -0800 (PST)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 y2-20020a62b502000000b00581013fcbe1sm3989425pfe.159.2023.02.04.10.33.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Feb 2023 10:33:57 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Sat,  4 Feb 2023 10:33:56 -0800
Message-Id: <20230204183355.never.877-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2035; h=from:subject:message-id;
 bh=qy5amV+9oAJHi2pDUUi24oStp3zhT4GjDgSO9ZjwQdU=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBj3qUUOW+2sqiSqcPAuwBFQkx8VdagSv/Qd2WPhMrE
 HjNLesWJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCY96lFAAKCRCJcvTf3G3AJixHEA
 CovqX7WYT0FI5nLrmHV0oGrrFq8qD+SHE4oPNnWJnePRPVv/EbJwv5fMT8jgaWtxELd9wpHutI+U4q
 pDF0T4YA+mYNfJGubGMqbQ80tScS7U0SmJbwO1cTrNnM0qmMnzL1GNU0XYkIDRKUxXWtNIC2N/xnlx
 UyHOmSe7SflhrX9QiE7tFa7iE6G64K8hNmLzfy+nwoXuL5jbXfCPD3jgoOHt2+hmMlnwqI1GUfc9ek
 r/SH0QpT+OQB3QmhF7RCfZp57oIRdACC6cLp/nEhCU5QzCXJ/ghcyyUWHgehooi26dwgqDTVYQjM79
 XpWmmVwn5lo3vtLnmPT85KAngV5qL0MxXS2TCC3vHuN0475+AteeBQcNbHztiRORt6JU+Vjt3YNosw
 XDM4MozD/ai55b+39+hCsQMsIqt+CW6FGL0zrHnSk7URkJpKv3c8gPylElAEyw/p1k3aKmOPx0+31z
 SKA1wOozEqSdOVyuEX3NARcM5caw7hxLSDVDGLOfjG5w35jaGYTMgFr2GE+12kEhq5zFaJilus6kxB
 mesYgiQfbApr15ZqLtUor3hqhopQYNHRWMqSa74rWCRX9gzP5sDAPooAEUz83XCv6ezOCf2X1bXWpg
 u7J34GxPPVu6l6Pm0rdKep5B5koJSctyA6Vva2PSbpZ533x09x5wb7UmPk8g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: To avoid confusing the compiler about possible negative sizes,
 switch "ssize" which can never be negative from int to u32. Seen with GCC
 13: ../fs/jfs/namei.c: In function 'jfs_symlink':
 ../include/linux/fortify-string.h:57:33:
 warning: '__builtin_memcpy' pointer overflow between offset 0 and size
 [-2147483648, -1] [-Warray-bounds=] 57 | # [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.42 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.42 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pOOO9-0006Wq-N6
Subject: [Jfs-discussion] [PATCH] jfs: Use unsigned variable for length
 calculations
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
Cc: Christian Brauner <brauner@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Dave Chinner <dchinner@redhat.com>, jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

To avoid confusing the compiler about possible negative sizes, switch
"ssize" which can never be negative from int to u32.  Seen with GCC 13:

../fs/jfs/namei.c: In function 'jfs_symlink': ../include/linux/fortify-string.h:57:33: warning: '__builtin_memcpy' pointer overflow between offset 0 and size [-2147483648, -1]
[-Warray-bounds=]
   57 | #define __underlying_memcpy     __builtin_memcpy
      |                                 ^
...
../fs/jfs/namei.c:950:17: note: in expansion of macro 'memcpy'
  950 |                 memcpy(ip->i_link, name, ssize);
      |                 ^~~~~~

Cc: Dave Kleikamp <shaggy@kernel.org>
Cc: Christian Brauner <brauner@kernel.org>
Cc: Dave Chinner <dchinner@redhat.com>
Cc: jfs-discussion@lists.sourceforge.net
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/jfs/namei.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
index b29d68b5eec5..494b9f4043cf 100644
--- a/fs/jfs/namei.c
+++ b/fs/jfs/namei.c
@@ -876,7 +876,7 @@ static int jfs_symlink(struct mnt_idmap *idmap, struct inode *dip,
 	tid_t tid;
 	ino_t ino = 0;
 	struct component_name dname;
-	int ssize;		/* source pathname size */
+	u32 ssize;		/* source pathname size */
 	struct btstack btstack;
 	struct inode *ip = d_inode(dentry);
 	s64 xlen = 0;
@@ -957,7 +957,7 @@ static int jfs_symlink(struct mnt_idmap *idmap, struct inode *dip,
 		if (ssize > sizeof (JFS_IP(ip)->i_inline))
 			JFS_IP(ip)->mode2 &= ~INLINEEA;
 
-		jfs_info("jfs_symlink: fast symlink added  ssize:%d name:%s ",
+		jfs_info("jfs_symlink: fast symlink added  ssize:%u name:%s ",
 			 ssize, name);
 	}
 	/*
@@ -987,7 +987,7 @@ static int jfs_symlink(struct mnt_idmap *idmap, struct inode *dip,
 		ip->i_size = ssize - 1;
 		while (ssize) {
 			/* This is kind of silly since PATH_MAX == 4K */
-			int copy_size = min(ssize, PSIZE);
+			u32 copy_size = min_t(u32, ssize, PSIZE);
 
 			mp = get_metapage(ip, xaddr, PSIZE, 1);
 
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
