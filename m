Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5B46619E0
	for <lists+jfs-discussion@lfdr.de>; Sun,  8 Jan 2023 22:17:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pEd2v-0008WO-Sm;
	Sun, 08 Jan 2023 21:17:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1pEd2t-0008WH-EW
 for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 21:17:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+fTNevAqKk/KH5jQmB577WyYwIjJaGXSYo1Kkw8//U8=; b=cWVegrGnMNM/tBSU2o+Ue4l42w
 iH5kive6DZ2O/+EFWb5qi76uya/QZTsC6i+BaOxlym04ehTsXDd1zK9I0K3dvWsnNSXM5UCddnfF7
 Mx+Z8wPpsfneQlilbySKqJMLUqFwR6TUK+Sht3aJq/FaKfFADJOLhLXgPNPlYMkVyyDY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+fTNevAqKk/KH5jQmB577WyYwIjJaGXSYo1Kkw8//U8=; b=SIBShmoDf3Ird/KFVWh96w50eW
 rrI1SisU61seIL1TsLj98JiBbO8Ns7m0MhMEydQN3CA7bYAsjOPJiI7r/wIjUqsYjpDd/fWRjjelU
 2v0h2zBhU7wlOXsONuDyQxBknVOFsrHc/lPPAJ/VbprDmtcW+YuDm9WvcvHd+I4Vmwc0=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pEd2p-0007uH-Gp for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 21:17:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+fTNevAqKk/KH5jQmB577WyYwIjJaGXSYo1Kkw8//U8=; b=byUKNGetm3skpB0osIZdzjmVcj
 gX2dVF3m2fMEnkOaV+kh6gvARpBZ7AFyfxgY+L1iGfpdfGfjVTHL9xxoF4NlkjqYeIaQLwOSl+Mtl
 4Sa3NFJyeX0+o+I3BQS8ART4Ltabft8TVIJwxwfwQ9nMYccsrJmcldxE+CTmKur3Bs+uvJ+oF9CgA
 aPIoqFVfFK2QUuQ7BDYMSYt74tm/fN5lm2i7/Za+hVv4N+RLcV8ktrebKs/bSETE8RZTA4ZxkhNE0
 u6tAe/HAvZcOUtIpTcGGV/A/eQ1GwLN3mPr8I1VwHlpv4keaJQ0vmIEQNNgsdYSo1bq9yynXC37jl
 Eu6oRbmw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1pEd2k-001kcp-D4; Sun, 08 Jan 2023 21:17:26 +0000
Date: Sun, 8 Jan 2023 21:17:26 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <Y7sy5jzjT7tpPX6Z@casper.infradead.org>
References: <20230108165645.381077-1-hch@lst.de>
 <20230108165645.381077-4-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230108165645.381077-4-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Jan 08, 2023 at 05:56:41PM +0100, Christoph Hellwig
 wrote: > @@ -274, 9 +280, 10 @@ int minix_add_link(struct dentry *dentry,
 struct
 inode *inode) > memset (namx + namelen, 0, sbi->s_dirsize - n [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1pEd2p-0007uH-Gp
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
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun, Jan 08, 2023 at 05:56:41PM +0100, Christoph Hellwig wrote:
> @@ -274,9 +280,10 @@ int minix_add_link(struct dentry *dentry, struct inode *inode)
>  		memset (namx + namelen, 0, sbi->s_dirsize - namelen - 2);
>  		de->inode = inode->i_ino;
>  	}
> -	err = dir_commit_chunk(page, pos, sbi->s_dirsize);
> +	dir_commit_chunk(page, pos, sbi->s_dirsize);
>  	dir->i_mtime = dir->i_ctime = current_time(dir);
>  	mark_inode_dirty(dir);
> +	minix_handle_dirsync(dir);

Doesn't this need to be:

	err = minix_handle_dirsync(dir);

> @@ -426,7 +436,7 @@ void minix_set_link(struct minix_dir_entry *de, struct page *page,
>  			((minix3_dirent *) de)->inode = inode->i_ino;
>  		else
>  			de->inode = inode->i_ino;
> -		err = dir_commit_chunk(page, pos, sbi->s_dirsize);
> +		dir_commit_chunk(page, pos, sbi->s_dirsize);
>  	} else {
>  		unlock_page(page);
>  	}
> -- 

Aren't you missing a call to minix_handle_dirsync() in this function?


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
