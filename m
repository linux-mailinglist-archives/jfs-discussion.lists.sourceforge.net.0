Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB276830DF
	for <lists+jfs-discussion@lfdr.de>; Tue, 31 Jan 2023 16:07:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pMsDh-0000Pi-4r;
	Tue, 31 Jan 2023 15:06:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1pMsDe-0000PU-Ny
 for jfs-discussion@lists.sourceforge.net;
 Tue, 31 Jan 2023 15:06:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6Prqc74eAinoD4zprfpPJbe6K3qBobg/zze6cxcfp8s=; b=diVQ3701C7rg0bOynz6mlOcckF
 PjFfXwmJlWRt8vyAuYiZcEOvCTAOKffbp12TxQzw7HyoOoH9T+l9DL0godACtrTXuHWWvkjvp3+9w
 wSEQ+2VeF/lGBj4Iz0trbdP8Gx1/SCV9T2Fe/cKFbiRCGgci+pNJLAyHIqbQi2YaZUo4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6Prqc74eAinoD4zprfpPJbe6K3qBobg/zze6cxcfp8s=; b=kbvX/EgpB3xtQv0SMjj4GCPOWo
 SXZ5hrFu6SWUd9MRHpkRg1jo6h3I6Rt4jF4WQClvVNk6kOS/6DcnQV99AyXIuDk5T0SV/6s9bwylT
 4O2Bnnv2VOQSVoQjdtbkKWHKTHdm1aWdgXKfTx8joJgUBDSNglz6nayg9ai4QX+F5xoc=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pMsDb-005Of1-O7 for jfs-discussion@lists.sourceforge.net;
 Tue, 31 Jan 2023 15:06:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=6Prqc74eAinoD4zprfpPJbe6K3qBobg/zze6cxcfp8s=; b=gZsdQl0wB6R57mjc3cqTuc6LGj
 zt2iEhUI4JQFk0mtu93a6KIbMq4FiEd9yO8qR2m6/Mfo8Wofqs0NGoa9u983bzRKXcnBRrUQaXTL1
 p1dE8WlhYlXpabpq8+Zx2iyDYZydvXJ7jsjc+ksoiQzo/wyyfs7xa0M94gbQ9z7EtWUCYmjjIaDEN
 CnK0Pa7In0p7/0xzqMLQNrb54Z/8ln6J9s1nS/VhF8X9QMxfOqfmUM7wnvuVkoXCdFQBtuqUm2KZK
 vxLfY9Eno1dX8D3ntbsAD0gTRSifWm4xlMy7O5h8FOHQGR3CsmXRJWK/EE9aPk4zqr4JFoKDovU5A
 K8sA6ICw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1pMsDA-00BOSx-Iz; Tue, 31 Jan 2023 15:06:16 +0000
Date: Tue, 31 Jan 2023 15:06:16 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Jan Kara <jack@suse.cz>, Andrew Morton <akpm@linux-foundation.org>
Message-ID: <Y9kuaBgXf9lKJ8b0@casper.infradead.org>
References: <0000000000006b2ca005f38c7aeb@google.com>
 <20230131121423.pqfogvntzouymzmv@quack3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230131121423.pqfogvntzouymzmv@quack3>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 31, 2023 at 01:14:23PM +0100, Jan Kara wrote:
 > This is the warning Willy has added as part of "mpage: convert >
 __mpage_writepage()
 to use a folio more fully" and that warning can indeed [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pMsDb-005Of1-O7
Subject: Re: [Jfs-discussion] [syzbot] [hfsplus?] [udf?] [fat?] [jfs?]
 [vfs?] [hfs?] [exfat?] [ntfs3?] WARNING in __mpage_writepage
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
Cc: shaggy@kernel.org, brauner@kernel.org, sj1557.seo@samsung.com,
 syzbot <syzbot+707bba7f823c7b02fa43@syzkaller.appspotmail.com>,
 dchinner@redhat.com, syzkaller-bugs@googlegroups.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 almaz.alexandrovich@paragon-software.com, jack@suse.com,
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev, linkinjeon@kernel.org,
 hirofumi@mail.parknet.co.jp
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Jan 31, 2023 at 01:14:23PM +0100, Jan Kara wrote:
> This is the warning Willy has added as part of "mpage: convert
> __mpage_writepage() to use a folio more fully" and that warning can indeed
> easily trigger. There's nothing that serializes writeback against racing
> truncate setting new i_size so it is perfectly normal to see pages beyond
> EOF in this place. And the traditional response to such pages is "silently
> do nothing" since they will be soon discarded by truncate_inode_pages().

Absolutely right.  Not sure what I was thinking; I may have been
confused by the label being called "confused".  How about this for
Andrew to squash into that commit?

diff --git a/fs/mpage.c b/fs/mpage.c
index 2efa393f0db7..89bcefb4553a 100644
--- a/fs/mpage.c
+++ b/fs/mpage.c
@@ -559,6 +559,9 @@ static int __mpage_writepage(struct folio *folio, struct writeback_control *wbc,
 	first_unmapped = page_block;
 
 page_is_mapped:
+	/* Don't bother writing beyond EOF, truncate will discard the folio */
+	if (folio_pos(folio) >= i_size)
+		goto confused;
 	length = folio_size(folio);
 	if (folio_pos(folio) + length > i_size) {
 		/*
@@ -570,8 +573,6 @@ static int __mpage_writepage(struct folio *folio, struct writeback_control *wbc,
 		 * written out to the file."
 		 */
 		length = i_size - folio_pos(folio);
-		if (WARN_ON_ONCE(folio_pos(folio) >= i_size))
-			goto confused;
 		folio_zero_segment(folio, length, folio_size(folio));
 	}
 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
