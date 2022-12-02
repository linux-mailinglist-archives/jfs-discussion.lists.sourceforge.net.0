Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4967A640485
	for <lists+jfs-discussion@lfdr.de>; Fri,  2 Dec 2022 11:23:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p13CK-00072L-GL;
	Fri, 02 Dec 2022 10:23:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1p13C8-00071l-2P;
 Fri, 02 Dec 2022 10:23:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y9ZqNSTAAKpWCTRDltbyh9yaj6hQDR0ta/KGZMliVz4=; b=ROVkU9+V4pgtOc5R+PPsniM8GH
 UBExlr4OIXmUosKuhZPzWYiMLOamG9u6kbpU14B6Cg2Zjm5ru+79fmnDiMpfFXve3hzyRxXNcRhIT
 gTun+8RMZFiaRzTqUWt3NEmzrTyoU81Sta1RlI1johg45t4ulzUgs2A02vyvVz+MAbUw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y9ZqNSTAAKpWCTRDltbyh9yaj6hQDR0ta/KGZMliVz4=; b=QjC6/DIM980g4Fqq/Jby0Hmii9
 exnKZwMJnXCXdyb3qdEw2n7KfEARaf0czT25GmXc+QYBrTQ1RumVytA1XD1ZWQ5NAVDpKGFvHI2dh
 EuJi7MhDVS47xWY7CgLTyjZSkcuro8EEnxr/odDelctjaX5HB/W7H7/wKoH/Daa9sKIU=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p13C6-0002Pl-PV; Fri, 02 Dec 2022 10:22:59 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D937167373; Fri,  2 Dec 2022 11:22:45 +0100 (CET)
Date: Fri, 2 Dec 2022 11:22:45 +0100
From: Christoph Hellwig <hch@lst.de>
To: "Ritesh Harjani (IBM)" <ritesh.list@gmail.com>
Message-ID: <20221202102245.GA17715@lst.de>
References: <20221113162902.883850-1-hch@lst.de>
 <20221116183900.yzpcymelnnwppoh7@riteshh-domain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221116183900.yzpcymelnnwppoh7@riteshh-domain>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Nov 17, 2022 at 12:09:00AM +0530,
 Ritesh Harjani (IBM)
 wrote: > reclaim. Now IIUC from previous discussions [1][2][3], reclaims
 happens from > the tail end of the LRU list which could do an I/ [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1p13C6-0002Pl-PV
Subject: Re: [Jfs-discussion] start removing writepage instances
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
 linux-ext4@vger.kernel.org, linux-karma-devel@lists.sourceforge.net,
 Bob Copeland <me@bobcopeland.com>, Namjae Jeon <linkinjeon@kernel.org>,
 linux-mm@kvack.org, Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Sungjong Seo <sj1557.seo@samsung.com>, Christoph Hellwig <hch@lst.de>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Nov 17, 2022 at 12:09:00AM +0530, Ritesh Harjani (IBM) wrote:
>    reclaim. Now IIUC from previous discussions [1][2][3], reclaims happens from
>    the tail end of the LRU list which could do an I/O of a single page while 
>    an ongoing writeback was in progress of multiple pages. This disrupts the I/O 
>    pattern to become more random in nature, compared to, if we would have let 
>    writeback/flusher do it's job of writing back dirty pages.

Yes.

>    Also many filesystems behave very differently within their ->writepage calls,
>    e.g. ext4 doesn't actually write in ->writepage for DELAYED blocks.

I don't think it's many file systems.  As far as I can tell only ext4
actually is significantly different.

> 2. Now the other place from where ->writepage can be called from is, writeout()
>    function, which is a fallback function for migration (fallback_migrate_folio()).
>    fallback_migrate_folio() is called from move_to_new_folio() if ->migrate_folio 
>    is not defined for the FS.

Also there is generic_writepages and folio_write_one/write_one_page.

> Is above a correct understanding?

Yes.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
