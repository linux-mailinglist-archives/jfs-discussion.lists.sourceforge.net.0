Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D33B663AE1
	for <lists+jfs-discussion@lfdr.de>; Tue, 10 Jan 2023 09:23:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pF9u8-0005rA-EK;
	Tue, 10 Jan 2023 08:22:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hch@lst.de>) id 1pF9u7-0005r3-2r
 for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Jan 2023 08:22:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B6Q685JpN2BmZ6cybFrDhyVWNToJ/u3DRxYMK0X6EnM=; b=XFarnp7f+BzhdGJv/tzzVeAXs1
 aCuadVcqG9QNhNe6amgjPRQP5zO9BhGceoiP6Si45T93/fJ3qUvgOT1YFNha7n7O6hfnFmTa5lTd4
 JLIDNHwDrBtUbRqOCQfDcn8aO+jvlNrRwK07Es9lU8DrhN/RWHzClXOYppOe1dET2aqQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B6Q685JpN2BmZ6cybFrDhyVWNToJ/u3DRxYMK0X6EnM=; b=IkilRzYI04kTnT1df0gnndNbVZ
 W7VeBOnPAf8IEsaw9PEh8WAzVSs/DoJAIe8UkQHD9brtfszpg5NM2cyaXToJu5nCCRrUP84cRq6qT
 zb/DdZClAAuj3hD5ym7hHOL4SnQIMxYEZqeCVOQBodMhcwKmqm9xR6H7vgsPYX/NsGOw=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pF9u6-00CbRC-Fu for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Jan 2023 08:22:43 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5B94068AFE; Tue, 10 Jan 2023 09:22:25 +0100 (CET)
Date: Tue, 10 Jan 2023 09:22:25 +0100
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20230110082225.GB11947@lst.de>
References: <20230108165645.381077-1-hch@lst.de>
 <20230108165645.381077-4-hch@lst.de> <Y7sy5jzjT7tpPX6Z@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y7sy5jzjT7tpPX6Z@casper.infradead.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jan 08, 2023 at 09:17:26PM +0000,
 Matthew Wilcox wrote:
 > > + dir_commit_chunk(page, pos, sbi->s_dirsize);
 > > dir->i_mtime = dir->i_ctime
 = current_time(dir); > > mark_inode_dirty(dir); > > + [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1pF9u6-00CbRC-Fu
Subject: Re: [Jfs-discussion] [PATCH 3/7] minix: don't flush page
 immediately for DIRSYNC directories
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
 Christoph Hellwig <hch@lst.de>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun, Jan 08, 2023 at 09:17:26PM +0000, Matthew Wilcox wrote:
> > +	dir_commit_chunk(page, pos, sbi->s_dirsize);
> >  	dir->i_mtime = dir->i_ctime = current_time(dir);
> >  	mark_inode_dirty(dir);
> > +	minix_handle_dirsync(dir);
> 
> Doesn't this need to be:
> 
> 	err = minix_handle_dirsync(dir);

Yes, fixed.

> 
> > @@ -426,7 +436,7 @@ void minix_set_link(struct minix_dir_entry *de, struct page *page,
> >  			((minix3_dirent *) de)->inode = inode->i_ino;
> >  		else
> >  			de->inode = inode->i_ino;
> > -		err = dir_commit_chunk(page, pos, sbi->s_dirsize);
> > +		dir_commit_chunk(page, pos, sbi->s_dirsize);
> >  	} else {
> >  		unlock_page(page);
> >  	}
> > -- 
> 
> Aren't you missing a call to minix_handle_dirsync() in this function?

Yes, fixed.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
