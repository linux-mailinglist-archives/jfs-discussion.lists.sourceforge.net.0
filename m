Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F16AE5988DE
	for <lists+jfs-discussion@lfdr.de>; Thu, 18 Aug 2022 18:30:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oOiOt-00011Y-W5;
	Thu, 18 Aug 2022 16:29:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <john.johansen@canonical.com>) id 1oOiA6-0000bh-Be
 for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Aug 2022 16:14:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YZZSkhT+TTALwtfUjy6aWTR//Rq9MQ2cQ72rzDjTaGo=; b=ILjNvPSaGq/VT6JYLcqlUFR9jj
 6lyruxRHt5Ia0LwEFZGPLei8YYtTv0RoyCe7cde3WAA8Vcu1/GLZhmrDVnomdNAcHgIx0XKwBZjnu
 OMhQv5SBQyLN2YG5Aok+hzh2hSl9muTaTPrZ7YR/4Isi9hDd613MySMvd2a1kghH3vzo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YZZSkhT+TTALwtfUjy6aWTR//Rq9MQ2cQ72rzDjTaGo=; b=QUgpsIzRYApe/mGrOzTSvooPAz
 FN3OXYIz+mUDl5q1bZevJOrmOafGNuG6DVQf/uOMzfYBuBKiuyW9H2fqewmBio7g8xiH8HQoCdT/n
 XN3muUm6pWQ6SBPrwUwgKSEwQjKmqbnyhAfNfhRNGHuMKXZC0nMPVMsZd8pEG6/5uoS4=;
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oOiA5-0008Ir-7r for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Aug 2022 16:14:26 +0000
Received: from [10.0.0.100]
 (cpe5896308f56e8-cm5896308f56e6.cpe.net.cable.rogers.com [99.255.30.7])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 104733F127; 
 Thu, 18 Aug 2022 16:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1660839256;
 bh=YZZSkhT+TTALwtfUjy6aWTR//Rq9MQ2cQ72rzDjTaGo=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=eKZn0EnaLQ3LPA55KId1jrSyN9QJDFoGajfUjb4kCVLZw+GJfPoyEZk5YsBGY9MBs
 BD5uhH5otcM+iD4WwVifrNr5NL1BUfcSMeQnhx/CHDs9NWQTtQwx1gGwhuoQTCfKMQ
 uST4xRWXm8MKtsgcqv+2mfMMUaoVq3HafCDVAbqHwknm58OvYYcZd9zEcvuHOCriAW
 5f5enAoNjxCzorVuGXsIE8HVJabgP9KqXKSRwJtYh0VtfpPArngeXisaJpK+yDOAEe
 WaTsYv22CXUAmrDXOQbGO1R7EFcMRumQCCw3nOo7oiJ1DQDXooj3VDnRI/oZGvfm7y
 iW9MAUvGRwJEw==
Message-ID: <dc966283-d0b9-b411-0792-c8553b948c2e@canonical.com>
Date: Thu, 18 Aug 2022 09:14:13 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Matthew Wilcox <willy@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <YvvBs+7YUcrzwV1a@ZenIV>
 <CAHk-=wgkNwDikLfEkqLxCWR=pLi1rbPZ5eyE8FbfmXP2=r3qcw@mail.gmail.com>
 <Yvvr447B+mqbZAoe@casper.infradead.org>
From: John Johansen <john.johansen@canonical.com>
Organization: Canonical
In-Reply-To: <Yvvr447B+mqbZAoe@casper.infradead.org>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 8/16/22 12:11, Matthew Wilcox wrote: > On Tue, Aug 16,
 2022 at 11:58:36AM -0700, Linus Torvalds wrote: >> That said, our filldir
 code is still confusing as hell. And I would >> really like to see t [...]
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.125.188.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oOiA5-0008Ir-7r
X-Mailman-Approved-At: Thu, 18 Aug 2022 16:29:42 +0000
Subject: Re: [Jfs-discussion] [apparmor] Switching to iterate_shared
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
Cc: jfs-discussion@lists.sourceforge.net, coda@cs.cmu.edu,
 apparmor@lists.ubuntu.com, linux-unionfs@vger.kernel.org,
 codalist@coda.cs.cmu.edu, Hans de Goede <hdegoede@redhat.com>,
 linux-security-module@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 Al Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Sungjong Seo <sj1557.seo@samsung.com>,
 Namjae Jeon <linkinjeon@kernel.org>, devel@lists.orangefs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 8/16/22 12:11, Matthew Wilcox wrote:
> On Tue, Aug 16, 2022 at 11:58:36AM -0700, Linus Torvalds wrote:
>> That said, our filldir code is still confusing as hell. And I would
>> really like to see that "shared vs non-shared" iterator thing go away,
>> with everybody using the shared one - and filesystems that can't deal
>> with it using their own lock.
>>
>> But that's a completely independent wart in our complicated filldir saga.
>>
>> But if somebody were to look at that iterate-vs-iterate_shared, that
>> would be lovely. A quick grep shows that we don't have *that* many of
>> the non-shared cases left:
>>
>>        git grep '\.iterate\>.*='
>>
>> seems to imply that converting them to a "use my own load" wouldn't be
>> _too_ bad.
>>
>> And some of them might actually be perfectly ok with the shared
>> semantics (ie inode->i_rwsem held just for reading) and they just were
>> never converted originally.
> 
> What's depressing is that some of these are newly added.  It'd be
> great if we could attach something _like_ __deprecated to things
> that checkpatch could pick up on.
> 
> fs/adfs/dir_f.c:        .iterate        = adfs_f_iterate,
> fs/adfs/dir_fplus.c:    .iterate        = adfs_fplus_iterate,
> 
> ADFS is read-only, so must be safe?
> 
> fs/ceph/dir.c:  .iterate = ceph_readdir,
> fs/ceph/dir.c:  .iterate = ceph_readdir,
> 
> At least CEPH has active maintainers, cc'd
> 
> fs/coda/dir.c:  .iterate        = coda_readdir,
> 
> Would anyone notice if we broke CODA?  Maintainers cc'd anyway.
> 
> fs/exfat/dir.c: .iterate        = exfat_iterate,
> 
> Exfat is a new addition, but has active maintainers.
> 
> fs/jfs/namei.c: .iterate        = jfs_readdir,
> 
> Maintainer cc'd
> 
> fs/ntfs/dir.c:  .iterate        = ntfs_readdir,         /* Read directory contents. */
> 
> Maybe we can get rid of ntfs soon.
> 
> fs/ocfs2/file.c:        .iterate        = ocfs2_readdir,
> fs/ocfs2/file.c:        .iterate        = ocfs2_readdir,
> 
> maintainers cc'd
> 
> fs/orangefs/dir.c:      .iterate = orangefs_dir_iterate,
> 
> New; maintainer cc'd
> 
> fs/overlayfs/readdir.c: .iterate        = ovl_iterate,
> 
> Active maintainer, cc'd
> 
> fs/proc/base.c: .iterate        = proc_##LSM##_attr_dir_iterate, \
> 
> Hmm.  We need both SMACK and Apparmor to agree to this ... cc's added.

This is fine for AppArmor


> 
> fs/vboxsf/dir.c:        .iterate = vboxsf_dir_iterate,
> 
> Also newly added.  Maintainer cc'd.
> 



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
