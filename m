Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B176619CC
	for <lists+jfs-discussion@lfdr.de>; Sun,  8 Jan 2023 22:14:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pEcz9-0008SC-Uu;
	Sun, 08 Jan 2023 21:13:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1pEcz7-0008S1-94
 for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 21:13:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D7a/bf8y+hnf1vOEi6y8Co5HNDUBH87eZ629Edw7Kh0=; b=DODzVOo6Y1cxNCWIe4u2kAmYwK
 pe1YPvXgdYFRs4vcfFjvapqEm+0dTJc7cIJPguzmeVDwzNno9SolhAPGEgs9YgAeih4RFwEMF3G1G
 NsYZrPloKRuOgKzuVQ/1Sy3zBDyppWV7i+lVzxmGVK7R68XzP9w4C2wG432p//7CxbOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D7a/bf8y+hnf1vOEi6y8Co5HNDUBH87eZ629Edw7Kh0=; b=Urau0QnEcjtDU4MMaSSJY8SUvv
 8NcqI7ZF+GNxekHvEUlV/ylRu/FTwl0didqX7YVMftwb0wmRnVEimzB3djUfptM5Ek71OI/AoXRXv
 3EpESV8ngUym6ZrR8EyspCEnWWeBh6F6qTrrmC68uXrn3otqEqZwq30le2JY/Iw6lrKs=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pEcz5-0007an-Bo for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 21:13:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=D7a/bf8y+hnf1vOEi6y8Co5HNDUBH87eZ629Edw7Kh0=; b=McX6ybvWrIyBCWgMTSn5LSbdcf
 7APZ7yKaIVqF9WLPgmBfFbu/wtlzNoBbY3ROyGkglp13HbeM8A3oRGzZ6+BMUEJAH9bUrRjg7h8j8
 jlnuRAO9JiYK8ahCVcAo0iRZvTw8+YYuRObTqFzqJfpZ5rtMal8H/6UlHDqwwJ9BjjWDY6MY8Um8Z
 RCcqyZQ3VCP8EXQQaWkalNAy69z09vzVgP8+buH64VUk2Ecs+reZ1w8LJ/kyj4Yx6OXcjCYXMg/bc
 tRcKu3lg1ysgOGu92TcqM9e5zmvEvQWgQzxW0kHHAQ0eTN+XvbnRUBtGnPKh92rTN4Dj7inDMKYkO
 KwSoeuvw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1pEcyg-001kSO-Ug; Sun, 08 Jan 2023 21:13:15 +0000
Date: Sun, 8 Jan 2023 21:13:14 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <Y7sx6iJPeyfVfkYV@casper.infradead.org>
References: <20230108165645.381077-1-hch@lst.de>
 <20230108165645.381077-3-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230108165645.381077-3-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jan 08, 2023 at 05:56:40PM +0100, Christoph Hellwig
 wrote: > + memset(&disk_super->magic, 0, len);
 > + set_page_dirty(virt_to_page(disk_super)); 
 Could we make this: folio_mark_dirty(virt_to_folio(disk_super)); 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1pEcz5-0007an-Bo
Subject: Re: [Jfs-discussion] [PATCH 2/7] btrfs: stop using write_one_page
 in btrfs_scratch_superblock
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Evgeniy Dushistov <dushistov@mail.ru>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Mark Fasheh <mark@fasheh.com>, Josef Bacik <josef@toxicpanda.com>,
 linux-mm@kvack.org, Chris Mason <clm@fb.com>, ocfs2-devel@oss.oracle.com,
 Joel Becker <jlbec@evilplan.org>, David Sterba <dsterba@suse.com>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun, Jan 08, 2023 at 05:56:40PM +0100, Christoph Hellwig wrote:
> +	memset(&disk_super->magic, 0, len);
> +	set_page_dirty(virt_to_page(disk_super));

Could we make this:

	folio_mark_dirty(virt_to_folio(disk_super));

Other than that, looks good.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
