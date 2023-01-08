Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5BF6619E5
	for <lists+jfs-discussion@lfdr.de>; Sun,  8 Jan 2023 22:19:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pEd4l-0007wt-Am;
	Sun, 08 Jan 2023 21:19:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1pEd4i-0007wi-Pu
 for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 21:19:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=smtf3b6c0YiLyegeGcE2QFdIpMIIUxY2QjH9VIZPeqs=; b=UMxfrxDGDW0X69nwezCPxsa1Wu
 cCOmv7BmP1g4a/GDOebNklEezoxQI0IQQPZPK+WuHDmyjQydsBD3qIVXLEAB2HgkM9mvKd7vpeOZG
 w1/bBW0GxMCwlJYp63DdIscqYkpT9kYNNUPcBpnyJUxzMg5vUrnQa7vQ3jtkiEuMiHvE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=smtf3b6c0YiLyegeGcE2QFdIpMIIUxY2QjH9VIZPeqs=; b=jP/sWmxgtjMzNphImk3aucmFwu
 RpOiXZ8guuNXTKDccjn0y9W6eBlsEbGFQQOen9sAnoz28764/DMCi6Kho9JZQeVT1OxEkL8ixLnNG
 okP9WeQ/FjENrDGiF8WO5vWnUfvNdxfohU7T7nseLNPX08OO8ndrhmHnTiA97+oLEzSo=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pEd4i-00081B-67 for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 21:19:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=smtf3b6c0YiLyegeGcE2QFdIpMIIUxY2QjH9VIZPeqs=; b=LwRCSfg4lurhfJplbjaoasx+AK
 i9NeK9Itn6mhZyaQBDGH8TsyNknvvOz6OzxmWVVH2jlqc/3k/698PgjVLLVYaPEjFaZdELofoEm8c
 w4wtquN4FxNlPO/Tyk44scz4/CWeWCVw2QzvSZmJwjvQ76VjjJJkcBRdiiH/CGf5OOsRAAp5NVqPF
 KodMj3MQOePSeDYwwAhqMQA7DCoBX9hicB1aN6THIdKISHSSVBQVgxGVetK6Oy18dlTXXLTtq7xk7
 wQSlhxVeURFfEUK6vyKbQgKfXUvkaRIuXkjROCzDp83BpM0eSnokETYF8b+nY1OpbJXqWeD3RaIoF
 zcJMPD6g==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1pEd4c-001khF-Q6; Sun, 08 Jan 2023 21:19:22 +0000
Date: Sun, 8 Jan 2023 21:19:22 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <Y7szWmUKSwcxsaMu@casper.infradead.org>
References: <20230108165645.381077-1-hch@lst.de>
 <20230108165645.381077-5-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230108165645.381077-5-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jan 08, 2023 at 05:56:42PM +0100, Christoph Hellwig
 wrote: > We do not need to writeout modified directory blocks immediately
 when > modifying them while the page is locked. It is enough to do [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1pEd4i-00081B-67
Subject: Re: [Jfs-discussion] [PATCH 4/7] sysv: don't flush page immediately
 for DIRSYNC directories
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

On Sun, Jan 08, 2023 at 05:56:42PM +0100, Christoph Hellwig wrote:
> We do not need to writeout modified directory blocks immediately when
> modifying them while the page is locked. It is enough to do the flush
> somewhat later which has the added benefit that inode times can be
> flushed as well. It also allows us to stop depending on
> write_one_page() function.

Similar concerns to the minix patch here ... missing assignments to
'err'.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
