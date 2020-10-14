Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F6A28D98F
	for <lists+jfs-discussion@lfdr.de>; Wed, 14 Oct 2020 07:30:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kSZMO-0007ec-4r; Wed, 14 Oct 2020 05:30:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1kSZMM-0007eT-9y
 for jfs-discussion@lists.sourceforge.net; Wed, 14 Oct 2020 05:29:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FtIzrrx52I9s/L0F5b/SYKDswu25oWi3u6T3OOCMfcU=; b=jczucOsk9nWnSjBF2q94B0JsTM
 7iPGJDAZ7psvprjeYhuJQT2MPXUJ4uNN1SOQuqX3TVeo69hj4XknYY2LpzLNEmITaDeXlyGb2QLUf
 F+COEnTi3msYulPr2coFAq4cgIuSsnHlcymSYDNFN1knPM736EOqzrRnDVP50T8S0iP8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FtIzrrx52I9s/L0F5b/SYKDswu25oWi3u6T3OOCMfcU=; b=LIRIZ1dZylmo/yruMB2uiT/f5i
 n9pRSFlqxuCSQb2jH2zPGOQ6QS6io6jPCiUenQ9m0fCvSU8UpDNFjQvqgGppN8EpPvU7xd967HXW/
 1Y0VEHZuI2QJ3N89lE+LqxIG6IhbhZ2N6d2sXYnkoVxNbvfED4Jck44CgtAPkw60kgnY=;
Received: from merlin.infradead.org ([205.233.59.134])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kSZMG-009Y2L-59
 for jfs-discussion@lists.sourceforge.net; Wed, 14 Oct 2020 05:29:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=FtIzrrx52I9s/L0F5b/SYKDswu25oWi3u6T3OOCMfcU=; b=iXEr7LGhwI6fgLxPbSd9YPwWRV
 PgFPp8GK3eB3O312DvRFxYHL4u9cB6TzPL1Ct062Wm4uMndoUggGHPMAs/sOLWtu5MoMGHtFeGmwR
 s2FAatAW43ZDn3X26lMuL1cT4OTxIOUAO20RpKveFX9rcr/RaVR+k10EIiyosU2TRqFfw0zLB9bER
 6/F/r7v8T546N4cTE4Q5ukihs/JWRlzLTv90XmuRvcIiPyAyra6F01TM2tNG60JSZzR+JwmVizMWz
 /RSmeHnkOVVhJPiJwaBHmiCo6seJXxzOlCUmzmGZa6z/ONAaKdpVAwcn1HiltSsdjIRQ0BFkWx9lX
 9UDGW5iw==;
Received: from [2601:1c0:6280:3f0::507c]
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSZM6-0008SQ-R5; Wed, 14 Oct 2020 05:29:43 +0000
To: linux-kernel@vger.kernel.org
References: <20200720001353.26200-1-rdunlap@infradead.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <0329314c-c139-68a9-38c2-0163ebd304b8@infradead.org>
Date: Tue, 13 Oct 2020 22:29:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200720001353.26200-1-rdunlap@infradead.org>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.233.59.134 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kSZMG-009Y2L-59
Subject: Re: [Jfs-discussion] [PATCH] jfs: delete duplicated words in header
 files
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

On 7/19/20 5:13 PM, Randy Dunlap wrote:
> Drop the repeated words "allocation" and "if" in comments.
> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Dave Kleikamp <shaggy@kernel.org>
> Cc: jfs-discussion@lists.sourceforge.net
> ---
>  fs/jfs/jfs_extent.h |    2 +-
>  fs/jfs/jfs_logmgr.h |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> --- linux-next-20200717.orig/fs/jfs/jfs_extent.h
> +++ linux-next-20200717/fs/jfs/jfs_extent.h
> @@ -5,7 +5,7 @@
>  #ifndef	_H_JFS_EXTENT
>  #define _H_JFS_EXTENT
>  
> -/*  get block allocation allocation hint as location of disk inode */
> +/*  get block allocation hint as location of disk inode */
>  #define	INOHINT(ip)	\
>  	(addressPXD(&(JFS_IP(ip)->ixpxd)) + lengthPXD(&(JFS_IP(ip)->ixpxd)) - 1)
>  
> --- linux-next-20200717.orig/fs/jfs/jfs_logmgr.h
> +++ linux-next-20200717/fs/jfs/jfs_logmgr.h
> @@ -132,7 +132,7 @@ struct logpage {
>   * (this comment should be rewritten !)
>   * jfs uses only "after" log records (only a single writer is allowed
>   * in a page, pages are written to temporary paging space if
> - * if they must be written to disk before commit, and i/o is
> + * they must be written to disk before commit, and i/o is
>   * scheduled for modified pages to their home location after
>   * the log records containing the after values and the commit
>   * record is written to the log on disk, undo discards the copy
> 


-- 
~Randy



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
