Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AC52DF092
	for <lists+jfs-discussion@lfdr.de>; Sat, 19 Dec 2020 17:59:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kqfZN-0001W3-2X; Sat, 19 Dec 2020 16:59:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhubbard@nvidia.com>)
 id 1kqWIK-0001Ql-C5; Sat, 19 Dec 2020 07:04:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A9fBx0IN5qsLyTEaO2K4aLwibDOVSe+bKLpimCocLwU=; b=hN2rWzhLTmSiU0pmEJfjRboA2n
 8cISS3mcaG89HfqfFrdp/BrfIA7I2+KGMC7x1anJHMW4P8zqBlNAHl1a2+S/gs0aK5ncHEcHlTnNQ
 natEH1wFcvte5j5fH1d+d3BprGHcKTeaQcLRq9OkCP7HC1oN+DI7cU5AgeuEDlHmVuNs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A9fBx0IN5qsLyTEaO2K4aLwibDOVSe+bKLpimCocLwU=; b=NVBvvA+8gkvG9aazkzcQ6wphzl
 P03EskfqvWoj2bqC5Nbccw6dThLlEfd0tNPzdBoYLuyMp6fp5p2f32KL5uU4lHwuP+v8vrIhXhlhi
 U+B3xPq/nz9xycRf9F+J7iyQhC5rjcxKzdSVVZvv+hBZD5jGlhOgpbji7IwRABCsdXts=;
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kqWI9-0023M5-1Y; Sat, 19 Dec 2020 07:04:48 +0000
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
 id <B5fdda5f80000>; Fri, 18 Dec 2020 23:04:24 -0800
Received: from [10.2.61.104] (172.20.145.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 19 Dec
 2020 07:04:23 +0000
To: Matthew Wilcox <willy@infradead.org>
References: <20201218160531.GL15600@casper.infradead.org>
 <20201218220316.GO15600@casper.infradead.org>
 <20201219051852.GP15600@casper.infradead.org>
 <7a7c3052-74c7-c63b-5fe3-65d692c1c5d1@nvidia.com>
 <20201219065057.GR15600@casper.infradead.org>
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <43f05a8f-25ce-a400-5825-d8fa159ee7f6@nvidia.com>
Date: Fri, 18 Dec 2020 23:04:23 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20201219065057.GR15600@casper.infradead.org>
Content-Language: en-US
X-Originating-IP: [172.20.145.6]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1608361464; bh=A9fBx0IN5qsLyTEaO2K4aLwibDOVSe+bKLpimCocLwU=;
 h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
 MIME-Version:In-Reply-To:Content-Type:Content-Language:
 Content-Transfer-Encoding:X-Originating-IP:X-ClientProxiedBy;
 b=Bgc3aR4z753YGJlW70WoLrtQ1KN8IbRzq31juKs6PfBN2zkSGHtinWPesncivbs4W
 VzTsGi5zW6I314mN0sALuVKM7eV85d/U7RnCFRj/tuktF25zg4GPCpkEmzSS3hoUHK
 PP07gVgvL8A0z77WSBOvwn20T/s6MvL8eDcowYD4Rs6BCV3hJUYhWaiMpxkCZoQAqY
 RxKeghrOfimP4wXYxSRuO2xATbM6n5/MhNO06xr/el270Y+5EbFgXIlop0FK1iDT07
 VWPAhXQlelzCRLSGyvDrtBjTpyiR5AjbZTqDfGwl3tId3hrMABj+K1hpMKyp1AXgv6
 lwMu3rKNfv89A==
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kqWI9-0023M5-1Y
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
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Jeff Dike <jdike@addtoit.com>,
 Anton Altaparmakov <anton@tuxera.com>, Mike Marshall <hubcap@omnibond.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 12/18/20 10:50 PM, Matthew Wilcox wrote:
...
>>> Hmmm ... looks like __set_page_dirty_nobuffers() has a similar problem:
>>>
>>> {
>>>           lock_page_memcg(page);
>>>           if (!TestSetPageDirty(page)) {
>>>                   struct address_space *mapping = page_mapping(page);
>>>                   unsigned long flags;
>>>
>>>                   if (!mapping) {
>>>                           unlock_page_memcg(page);
>>>                           return 1;
>>>                   }
>>>
>>>                   xa_lock_irqsave(&mapping->i_pages, flags);
>>>                   BUG_ON(page_mapping(page) != mapping);
>>>
>>> sure, we check that the page wasn't truncated between set_page_dirty()
>>> and the call to TestSetPageDirty(), but we can truncate dirty pages
>>> with no problem.  So between the call to TestSetPageDirty() and
>>> the call to xa_lock_irqsave(), the page can be truncated, and the
>>> BUG_ON should fire.
>>>
>>> I haven't been able to find any examples of this, but maybe it's just a very
>>> narrow race.  Does anyone recognise this signature?  Adding the filesystems
>>> which use __set_page_dirty_nobuffers() directly without extra locking.
>>
>>
>> That sounds like the same *kind* of failure that Jan Kara and I were
>> seeing on live systems[1], that led eventually to the gup-to-pup
>> conversion exercise.
>>
>> That crash happened due to calling set_page_dirty() on pages that had no
>> buffers on them [2]. And that sounds like *exactly* the same thing as
>> calling __set_page_dirty_nobuffers() without extra locking. So I'd
>> expect that it's Just Wrong To Do, for the same reasons as Jan spells
>> out very clearly in [1].
> 
> Interesting.  It's a bit different, *but* Jan's race might be what's
> causing this symptom.  The reason is that the backtrace contains
> set_page_dirty_lock() which holds the page lock.  So there can't be
> a truncation race because truncate holds the page lock when calling
> ->invalidatepage.
> 
> That said, the syzbot reproducer doesn't have any O_DIRECT in it
> either.  So maybe this is some other race?

Jan's race can be also be reproduced *without* O_DIRECT. I first saw
it via a program that just did these steps on a normal ext4 filesystem:

a) pin ext4 file-backed pages, via get_user_pages(). Actually the way
it got here was due to using what *looked* like anonymous RAM to the
program, but was really file-backed RAM, because the admin had it
set up to mount ext4 on /tmp, instead of using tmpfs, to "save RAM",
but I digress. :)

b) wait a while, optionally do some DMA on the pages from a GPU, drink
coffee...

c) call set_pages_dirty()

d) unpin the pages

e) BUG_ON() in page_buffers().


thanks,
-- 
John Hubbard
NVIDIA


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
