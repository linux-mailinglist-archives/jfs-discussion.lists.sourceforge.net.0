Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E00028D990
	for <lists+jfs-discussion@lfdr.de>; Wed, 14 Oct 2020 07:30:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kSZMn-0005ZR-Ha; Wed, 14 Oct 2020 05:30:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1kSZMm-0005Z7-N7
 for jfs-discussion@lists.sourceforge.net; Wed, 14 Oct 2020 05:30:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0RdLnWdqLniXru95MsyVjh9zwMbeEReIgSPPac9ZFJM=; b=kJ2Ix15VFERzXS5FngHhLzdKP/
 +9RXjai5/cYVRCMJYHK3yMU81UpsWlBFizLVYHFaow7hrRkwGbyWrFcFASL92MgQsbL4JZpUjAu9Q
 c2cJZ7oTiK1M/BvcNCeTndOkTgoZMwUovJMYQHVXuSN/g3Qif8HjAJi4mMRI8ZNtkJgE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0RdLnWdqLniXru95MsyVjh9zwMbeEReIgSPPac9ZFJM=; b=Dgqq0jqmvhVKuroMQMgQu+3ToK
 aNqcoE5EWU7eFfjIfE3tPTWBVma2aYxO5xiGNEZN+OfLUsgcJfNCvHO7B5EEI35U3y6caPS9wlqTv
 oV0tCm7KLJNX8yUdAHnlYHi0F7+MeG22hPUw1ipqwy5uuKeI3OWN6nuCCqsZ4mWKceJ4=;
Received: from merlin.infradead.org ([205.233.59.134])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kSZMd-00ETOx-US
 for jfs-discussion@lists.sourceforge.net; Wed, 14 Oct 2020 05:30:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=0RdLnWdqLniXru95MsyVjh9zwMbeEReIgSPPac9ZFJM=; b=lWrIQk8P4mN5/kRF2M4whnSigo
 CLDH5QWbITTOzbEdVFh8wXS4hd4dJMQicu6DkH3Rs/lutIFKxC5/nZYceoCz/htv40QOR4qzYWCBR
 HOLGY2hLCgCBgjs3idGyCXOCUQ++39T7bQoVzKzryuC9ESgUKXFmSCX3zOjnQXkWEhM6eDDRPsy4n
 RWmlHTnwNqetZOJrV/Slg0nGVI3JXcK4oQWMsS0b/othPYFqnX46ZEtjHppgGfUUdz07GAPq+XGz4
 h0UQxMvYraoSJO4WJlFUNXlDqPh72IRuE5VpdwGkzWac8D6+EBYiOjkeNMRuD1A4Sq+6i2lis3f15
 RyA0xcfA==;
Received: from [2601:1c0:6280:3f0::507c]
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSZMX-0008WR-Pr; Wed, 14 Oct 2020 05:30:10 +0000
To: linux-fsdevel@vger.kernel.org
References: <20200805024901.12181-1-rdunlap@infradead.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <8a632de9-d4ef-3f90-036a-7f9cc35eb8a9@infradead.org>
Date: Tue, 13 Oct 2020 22:30:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200805024901.12181-1-rdunlap@infradead.org>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.233.59.134 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kSZMd-00ETOx-US
Subject: Re: [Jfs-discussion] [PATCH] jfs: delete duplicated words + other
 fixes
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

ping.

On 8/4/20 7:49 PM, Randy Dunlap wrote:
> Delete repeated words in fs/jfs/.
> {for, allocation, if, the}
> Insert "is" in one place to correct the grammar.
> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> To: linux-fsdevel@vger.kernel.org
> Cc: Dave Kleikamp <shaggy@kernel.org>
> Cc: jfs-discussion@lists.sourceforge.net
> ---
>  fs/jfs/jfs_dmap.c   |    2 +-
>  fs/jfs/jfs_extent.c |    2 +-
>  fs/jfs/jfs_extent.h |    2 +-
>  fs/jfs/jfs_logmgr.h |    2 +-
>  fs/jfs/jfs_txnmgr.c |    2 +-
>  fs/jfs/jfs_xtree.c  |    2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)
> 
> --- linux-next-20200804.orig/fs/jfs/jfs_dmap.c
> +++ linux-next-20200804/fs/jfs/jfs_dmap.c
> @@ -668,7 +668,7 @@ unlock:
>   *		this does not succeed, we finally try to allocate anywhere
>   *		within the aggregate.
>   *
> - *		we also try to allocate anywhere within the aggregate for
> + *		we also try to allocate anywhere within the aggregate
>   *		for allocation requests larger than the allocation group
>   *		size or requests that specify no hint value.
>   *
> --- linux-next-20200804.orig/fs/jfs/jfs_extent.c
> +++ linux-next-20200804/fs/jfs/jfs_extent.c
> @@ -575,7 +575,7 @@ extBalloc(struct inode *ip, s64 hint, s6
>   *	blkno	 - starting block number of the extents current allocation.
>   *	nblks	 - number of blocks within the extents current allocation.
>   *	newnblks - pointer to a s64 value.  on entry, this value is the
> - *		   the new desired extent size (number of blocks).  on
> + *		   new desired extent size (number of blocks).  on
>   *		   successful exit, this value is set to the extent's actual
>   *		   new size (new number of blocks).
>   *	newblkno - the starting block number of the extents new allocation.
> --- linux-next-20200804.orig/fs/jfs/jfs_extent.h
> +++ linux-next-20200804/fs/jfs/jfs_extent.h
> @@ -5,7 +5,7 @@
>  #ifndef	_H_JFS_EXTENT
>  #define _H_JFS_EXTENT
>  
> -/*  get block allocation allocation hint as location of disk inode */
> +/*  get block allocation hint as location of disk inode */
>  #define	INOHINT(ip)	\
>  	(addressPXD(&(JFS_IP(ip)->ixpxd)) + lengthPXD(&(JFS_IP(ip)->ixpxd)) - 1)
>  
> --- linux-next-20200804.orig/fs/jfs/jfs_logmgr.h
> +++ linux-next-20200804/fs/jfs/jfs_logmgr.h
> @@ -132,7 +132,7 @@ struct logpage {
>   * (this comment should be rewritten !)
>   * jfs uses only "after" log records (only a single writer is allowed
>   * in a page, pages are written to temporary paging space if
> - * if they must be written to disk before commit, and i/o is
> + * they must be written to disk before commit, and i/o is
>   * scheduled for modified pages to their home location after
>   * the log records containing the after values and the commit
>   * record is written to the log on disk, undo discards the copy
> --- linux-next-20200804.orig/fs/jfs/jfs_txnmgr.c
> +++ linux-next-20200804/fs/jfs/jfs_txnmgr.c
> @@ -1474,7 +1474,7 @@ static int diLog(struct jfs_log * log, s
>  		 * For the LOG_NOREDOINOEXT record, we need
>  		 * to pass the IAG number and inode extent
>  		 * index (within that IAG) from which the
> -		 * the extent being released.  These have been
> +		 * extent is being released.  These have been
>  		 * passed to us in the iplist[1] and iplist[2].
>  		 */
>  		lrd->log.noredoinoext.iagnum =
> --- linux-next-20200804.orig/fs/jfs/jfs_xtree.c
> +++ linux-next-20200804/fs/jfs/jfs_xtree.c
> @@ -3684,7 +3684,7 @@ s64 xtTruncate(tid_t tid, struct inode *
>   *
>   * function:
>   *	Perform truncate to zero length for deleted file, leaving the
> - *	the xtree and working map untouched.  This allows the file to
> + *	xtree and working map untouched.  This allows the file to
>   *	be accessed via open file handles, while the delete of the file
>   *	is committed to disk.
>   *
> 


-- 
~Randy



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
