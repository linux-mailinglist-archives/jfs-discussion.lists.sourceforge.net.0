Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA646651AF
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Jan 2023 03:21:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pFQjm-0003KM-Qs;
	Wed, 11 Jan 2023 02:21:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <viro@ftp.linux.org.uk>) id 1pFQjl-0003KG-Eb
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Jan 2023 02:21:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nC2zRIJsPDH7lfPM013A6ZhKrdzcIixd+v8ICTA/zXw=; b=LxMuDcn8QXcSSpNP7GbS7quKep
 xTyvEjr6n7rusQW4Cln3KSYDs5qFmMEvJJcjHingaPty8rGAnKHQEmW4EWCke1dHN9uyzP/puIawi
 5uCNHbnmIll9zXFBtNlebtWagwu/fXjck+9yCteaT9b7tFGGN3T2gIBySVPKcrA7DlXI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nC2zRIJsPDH7lfPM013A6ZhKrdzcIixd+v8ICTA/zXw=; b=ERJs7fnTy4ESgh8nfPGcmtNN9N
 KiZKLEA4bz4HfSnFSc0Q5tp+vpOzfyf+dw+9y/mGUPKWuiN5KZmoPIh76zPX/ex7vty29C/g2BNMv
 8Z49/c7pSyyXrrPZKo8tLT82IBwifqO0HoMzKUYChPrtexpEa398w9EUVY88TJH4TxSc=;
Received: from zeniv.linux.org.uk ([62.89.141.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pFQjj-00DTYf-Ck for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Jan 2023 02:21:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=nC2zRIJsPDH7lfPM013A6ZhKrdzcIixd+v8ICTA/zXw=; b=EJXDRWw922tsBHv8pVihMTfEzX
 cAnh+DIDfy5WK8WpuLeldrQsLeM+U+IDEhfDKkpqfRPo5ltzJrRQJN2h0983eKxZEn/ViZvQT1zw5
 dXZE6B7ajOJP+d079+ZOkU3XjRGF0CBIhvdLilgI3TMdfwzsYv8Hj+L9vHTLYg6953pTPbQgKeBnG
 jKblwmPGe5q2Ukar3+4BVgnbtwgOGcxJvaBJ2QDDdnukNQLNFYs45tV0O+meIHYIoke++yw3YLSEc
 ckkPIEkrGzWzDZEg2WPLfglK5OOx6Ai2BfcMgqkfqHHatTmLIju0/qQmXMpjNhfM21hXR1omDsOhr
 Xvu53ukg==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat
 Linux)) id 1pFQjJ-0016dP-29; Wed, 11 Jan 2023 02:20:42 +0000
Date: Wed, 11 Jan 2023 02:20:41 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <Y74c+WSEajAic3Kh@ZenIV>
References: <20230108165645.381077-1-hch@lst.de>
 <20230108165645.381077-4-hch@lst.de>
 <Y7sy5jzjT7tpPX6Z@casper.infradead.org>
 <20230110082225.GB11947@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230110082225.GB11947@lst.de>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 10, 2023 at 09:22:25AM +0100, Christoph Hellwig
 wrote: > On Sun, Jan 08, 2023 at 09:17:26PM +0000, Matthew Wilcox wrote:
 > > > + dir_commit_chunk(page, pos, sbi->s_dirsize); > > > dir->i_m [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux.org.uk]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pFQjj-00DTYf-Ck
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
 Matthew Wilcox <willy@infradead.org>, linux-mm@kvack.org,
 Chris Mason <clm@fb.com>, ocfs2-devel@oss.oracle.com,
 Joel Becker <jlbec@evilplan.org>, David Sterba <dsterba@suse.com>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Jan 10, 2023 at 09:22:25AM +0100, Christoph Hellwig wrote:
> On Sun, Jan 08, 2023 at 09:17:26PM +0000, Matthew Wilcox wrote:
> > > +	dir_commit_chunk(page, pos, sbi->s_dirsize);
> > >  	dir->i_mtime = dir->i_ctime = current_time(dir);
> > >  	mark_inode_dirty(dir);
> > > +	minix_handle_dirsync(dir);
> > 
> > Doesn't this need to be:
> > 
> > 	err = minix_handle_dirsync(dir);
> 
> Yes, fixed.
> 
> > 
> > > @@ -426,7 +436,7 @@ void minix_set_link(struct minix_dir_entry *de, struct page *page,
> > >  			((minix3_dirent *) de)->inode = inode->i_ino;
> > >  		else
> > >  			de->inode = inode->i_ino;
> > > -		err = dir_commit_chunk(page, pos, sbi->s_dirsize);
> > > +		dir_commit_chunk(page, pos, sbi->s_dirsize);
> > >  	} else {
> > >  		unlock_page(page);
> > >  	}
> > > -- 
> > 
> > Aren't you missing a call to minix_handle_dirsync() in this function?
> 
> Yes, fixed.

More seriously, all those ..._set_link() need to return an error and their
callers (..._rename()) need to deal with failures.  That goes for ext2
as well, and that part is worth splitting off into a prereq - it's a -stable
fodder.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
