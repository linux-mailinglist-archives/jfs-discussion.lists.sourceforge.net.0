Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA75D2DF091
	for <lists+jfs-discussion@lfdr.de>; Sat, 19 Dec 2020 17:59:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kqfZM-0001Vx-Sf; Sat, 19 Dec 2020 16:59:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhubbard@nvidia.com>)
 id 1kqVRt-0000v9-1U; Sat, 19 Dec 2020 06:10:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YT+YKnInmeemv6e/Fp+/gLXE931wQw0pvJP24SiD55g=; b=PdwHgJcvI13b55XqykH+Mw2xne
 TdRD9O0CBX1tYMI/0yseTeiLntRJgFbKd3MJJoiDiAx70hcCGbVNvIpimMhaw7N7VdyCeg6dwPDvo
 OtjTrBTd0UjXAYwMIxze6yvSQYM3nfGoUDRZuAcDJM3nqIqLRVc2xJDhxf6Ctb/+GJc0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YT+YKnInmeemv6e/Fp+/gLXE931wQw0pvJP24SiD55g=; b=M2dWcKjhymN1zEPlsO9bcnRSu9
 BITP0yloGalLeUMCR58AD4Sptmz8Y8hFWvtG0Pw79v8eg7KjDzS4qCYsE/rYZl/xvqMBULrm28JeS
 SEIdpWEGddh7kBTIJsJWfYeE0fym1ZjMsQeW0SX4APzK2AMHiS5L5ovYFCLIq7TQSL6Q=;
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kqVRe-002Ku9-Lu; Sat, 19 Dec 2020 06:10:36 +0000
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
 id <B5fdd993a0000>; Fri, 18 Dec 2020 22:10:02 -0800
Received: from [10.2.61.104] (172.20.145.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 19 Dec
 2020 06:10:01 +0000
To: Matthew Wilcox <willy@infradead.org>, <linux-fsdevel@vger.kernel.org>
References: <20201218160531.GL15600@casper.infradead.org>
 <20201218220316.GO15600@casper.infradead.org>
 <20201219051852.GP15600@casper.infradead.org>
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <7a7c3052-74c7-c63b-5fe3-65d692c1c5d1@nvidia.com>
Date: Fri, 18 Dec 2020 22:10:01 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20201219051852.GP15600@casper.infradead.org>
Content-Language: en-US
X-Originating-IP: [172.20.145.6]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1608358202; bh=YT+YKnInmeemv6e/Fp+/gLXE931wQw0pvJP24SiD55g=;
 h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
 MIME-Version:In-Reply-To:Content-Type:Content-Language:
 Content-Transfer-Encoding:X-Originating-IP:X-ClientProxiedBy;
 b=IqDV2bngOTzJ/heB1F6Qspmm1JbzkTQy88O9dFw+Pf27ufqeuc9LQ8mZElUt9hQtj
 Ah68MFRwp1uCNUjqybWF9EWTRYfx2pNNWmYFz2Kvh5ML3fnzTRJsciuZLagOUSPz65
 bmmPasdRMZqsr0ATRiFyqT2ZIeD12CBxMn2dRv8C/oLYNM2pCCxRxQBSvb/SkMMLKd
 tNLq1N3a3YiMn3e/eWddN6DsA1QFd25JWKXx3beuHd7aKQfFKzM6y3dUqYvKj0FuSy
 cFeDD8k756mBh2pV3PXdwrEou9373IjgY9ApO4tI1EiLCg727obyz1ZmWQYeIZWg37
 tDFFU2R7AMF8A==
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: spinics.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kqVRe-002Ku9-Lu
X-Mailman-Approved-At: Sat, 19 Dec 2020 16:58:59 +0000
Subject: Re: [Jfs-discussion] set_page_dirty vs truncate
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
Cc: Martin Brandenburg <martin@omnibond.com>, linux-cifs@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net, Miklos Szeredi <miklos@szeredi.hu>,
 Dave Kleikamp <shaggy@kernel.org>, Richard Weinberger <richard@nod.at>,
 Dominique Martinet <asmadeus@codewreck.org>, linux-um@lists.infradead.org,
 linux-nfs@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>,
 Steve French <sfrench@samba.org>, linux-ntfs-dev@lists.sourceforge.net,
 Hans de Goede <hdegoede@redhat.com>, devel@lists.orangefs.org,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net, Jeff Dike <jdike@addtoit.com>,
 Anton Altaparmakov <anton@tuxera.com>, Mike Marshall <hubcap@omnibond.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 12/18/20 9:18 PM, Matthew Wilcox wrote:
> On Fri, Dec 18, 2020 at 10:03:16PM +0000, Matthew Wilcox wrote:
>> On Fri, Dec 18, 2020 at 04:05:31PM +0000, Matthew Wilcox wrote:
>>> A number of implementations of ->set_page_dirty check whether the page
>>> has been truncated (ie page->mapping has become NULL since entering
>>> set_page_dirty()).  Several other implementations assume that they can do
>>> page->mapping->host to get to the inode.  So either some implementations
>>> are doing unnecessary checks or others are vulnerable to a NULL pointer
>>> dereference if truncate() races with set_page_dirty().
>>>
>>> I'm touching ->set_page_dirty() anyway as part of the page folio
>>> conversion.  I'm thinking about passing in the mapping so there's no
>>> need to look at page->mapping.
>>>
>>> The comments on set_page_dirty() and set_page_dirty_lock() suggests
>>> there's no consistency in whether truncation is blocked or not; we're
>>> only guaranteed that the inode itself won't go away.  But maybe the
>>> comments are stale.
>>
>> The comments are, I believe, not stale.  Here's some syzbot
>> reports which indicate that ext4 is seeing races between set_page_dirty()
>> and truncate():
>>
>>   https://groups.google.com/g/syzkaller-lts-bugs/c/s9fHu162zhQ/m/Phnf6ucaAwAJ
>>
>> The reproducer includes calls to ftruncate(), so that would suggest
>> that's what's going on.
> 
> Hmmm ... looks like __set_page_dirty_nobuffers() has a similar problem:
> 
> {
>          lock_page_memcg(page);
>          if (!TestSetPageDirty(page)) {
>                  struct address_space *mapping = page_mapping(page);
>                  unsigned long flags;
> 
>                  if (!mapping) {
>                          unlock_page_memcg(page);
>                          return 1;
>                  }
> 
>                  xa_lock_irqsave(&mapping->i_pages, flags);
>                  BUG_ON(page_mapping(page) != mapping);
> 
> sure, we check that the page wasn't truncated between set_page_dirty()
> and the call to TestSetPageDirty(), but we can truncate dirty pages
> with no problem.  So between the call to TestSetPageDirty() and
> the call to xa_lock_irqsave(), the page can be truncated, and the
> BUG_ON should fire.
> 
> I haven't been able to find any examples of this, but maybe it's just a very
> narrow race.  Does anyone recognise this signature?  Adding the filesystems
> which use __set_page_dirty_nobuffers() directly without extra locking.


That sounds like the same *kind* of failure that Jan Kara and I were
seeing on live systems[1], that led eventually to the gup-to-pup
conversion exercise.

That crash happened due to calling set_page_dirty() on pages that had no
buffers on them [2]. And that sounds like *exactly* the same thing as
calling __set_page_dirty_nobuffers() without extra locking. So I'd
expect that it's Just Wrong To Do, for the same reasons as Jan spells
out very clearly in [1].

Hope that helps.


[1] https://www.spinics.net/lists/linux-mm/msg142700.html

[2] which triggered this assertion:

#define page_buffers(page)					\
	({							\
		BUG_ON(!PagePrivate(page));			\
		((struct buffer_head *)page_private(page));	\
	})


> 
> $ git grep set_page_dirty.*=.*__set_page_dirty_nobuffers
> fs/9p/vfs_addr.c:       .set_page_dirty = __set_page_dirty_nobuffers,
> fs/cifs/file.c: .set_page_dirty = __set_page_dirty_nobuffers,
> fs/cifs/file.c: .set_page_dirty = __set_page_dirty_nobuffers,
> fs/fuse/file.c: .set_page_dirty = __set_page_dirty_nobuffers,
> fs/hostfs/hostfs_kern.c:        .set_page_dirty = __set_page_dirty_nobuffers,
> fs/jfs/jfs_metapage.c:  .set_page_dirty = __set_page_dirty_nobuffers,
> fs/nfs/file.c:  .set_page_dirty = __set_page_dirty_nobuffers,
> fs/ntfs/aops.c: .set_page_dirty = __set_page_dirty_nobuffers,   /* Set the page dirty
> fs/orangefs/inode.c:    .set_page_dirty = __set_page_dirty_nobuffers,
> fs/vboxsf/file.c:       .set_page_dirty = __set_page_dirty_nobuffers,
> 

...wow, long list of these.

thanks,
-- 
John Hubbard
NVIDIA


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
