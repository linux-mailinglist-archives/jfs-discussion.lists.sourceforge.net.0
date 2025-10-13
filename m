Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52621BD1FE0
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 10:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G/tpM8CZfRtUdMnJ67+dHK/k6wNstHsxHM++zgR6qr4=; b=gexQTAuC2ROUswYE6W+ro7l7cq
	Pd3id3OZaJUj4g4ZDZOqfkpQ97ULPJBHMZHAT3Y7c9mHUYduy2jNBsZE0YQpQnp1+CTD36x4aOBdc
	uidUbGFZUs5Vf32XbGwvu27/4yKwMj92P6ae6Wm3IOJgz2W4fSz50vEd5nlbN2oROQEQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8Dlx-0005BO-U1;
	Mon, 13 Oct 2025 08:19:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dlemoal@kernel.org>) id 1v8Dlw-0005BF-4K
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:19:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ughf36Tebh8tRi2naNgzgYAeZFLBdoKgUmvbnrM4Nas=; b=Dpvj8XFF3Eb0m2eH5fKH3tntPT
 noqjUAiN5hJJXX7nyYBzP7xzccjGLdwVL7zesxl3jkdkQvhyMXKB61bWZPSSpjChMWZxpcle8IcNn
 HstV2tMfpTZz2//hqaDPgJPrWGMU2wVUmZd12hADtq4MI6d9yAxpGZEWdFFZssyeiJzo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ughf36Tebh8tRi2naNgzgYAeZFLBdoKgUmvbnrM4Nas=; b=PahU6tfHMXEhMzZW8Oh4+47/fi
 OOcLiweSXIBbSissV6x2JeGYgouEapgKIlc2m/WFKNdmHsv7MSWE9jB+Qx0/nyWUd27KmjtGKT9I1
 qVa1AuOTbwb3YmRprTdSxjUunTKXr3m8+KaS0ZDpXdq8e9bSQuWGPM10XbGF+y7C9sJY=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8Dlv-0006m0-MT for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:19:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 58BE84580E;
 Mon, 13 Oct 2025 08:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74A26C4CEFE;
 Mon, 13 Oct 2025 08:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760343546;
 bh=ljQ4j9Pz6Hncku4QWYc6uskMl5cg5GjeIdqG3a1O4kI=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=a98t5npJJxA0RJV0qsmNA99531rbeFhI9GCV5Nhm8c3l8Se+sNXDDv4NaKtx8qXjx
 mYVxDcykicQUWeTF/7HfZFk91uHV3VGoOtjkAyFpmHYPwg3ldZ63R2pu2Z2VhlyFqv
 isgTahZdLMc7pBZzsN8e0+q7JVVIkQqjansZ++RQ+tcwm3SnnKjHk/mdNkPM+3YOxw
 uhKKLFud+BtR7TYveS6u94Jl/qVItX1ZfGqjGMnJVUYTvqJhFTdXkNHWugrL628awG
 eVmkEfNY7U6eHRhr30I+EKehBZIoit3IG1lZhOvcYrwAOE9sAQqTNgFaQplwImdWkt
 s8JSCF07WNolg==
Message-ID: <74ddf437-0d59-4008-85ea-da6f0f6c0c9c@kernel.org>
Date: Mon, 13 Oct 2025 17:19:01 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Daniel Vacek <neelx@suse.com>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-6-hch@lst.de>
 <65aad714-3f1d-4f4b-bb8f-6f751ff756b7@kernel.org>
 <CAPjX3FdRvkie6XMvAjSXb4=8bcjeg1qNjYVT5KOBUDrc+H=nDQ@mail.gmail.com>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <CAPjX3FdRvkie6XMvAjSXb4=8bcjeg1qNjYVT5KOBUDrc+H=nDQ@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/10/13 17:15, Daniel Vacek wrote: > On Mon, 13 Oct
 2025 at 09:56, Damien Le Moal <dlemoal@kernel.org> wrote: >> >> On 2025/10/13
 11:58, Christoph Hellwig wrote: >>> In preparation for changing [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1v8Dlv-0006m0-MT
Subject: Re: [Jfs-discussion] [PATCH 05/10] btrfs: push struct
 writeback_control into start_delalloc_inodes
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
From: Damien Le Moal via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Damien Le Moal <dlemoal@kernel.org>
Cc: Latchesar Ionkov <lucho@ionkov.net>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-mm@kvack.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Christoph Hellwig <hch@lst.de>,
 Mark Fasheh <mark@fasheh.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-ext4@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Joel Becker <jlbec@evilplan.org>,
 David Sterba <dsterba@suse.com>, Eric Van Hensbergen <ericvh@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 v9fs@lists.linux.dev, linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2025/10/13 17:15, Daniel Vacek wrote:
> On Mon, 13 Oct 2025 at 09:56, Damien Le Moal <dlemoal@kernel.org> wrote:
>>
>> On 2025/10/13 11:58, Christoph Hellwig wrote:
>>> In preparation for changing the filemap_fdatawrite_wbc API to not expose
>>> the writeback_control to the callers, push the wbc declaration next to
>>> the filemap_fdatawrite_wbc call and just pass thr nr_to_write value to
>>
>> s/thr/the
>>
>>> start_delalloc_inodes.
>>>
>>> Signed-off-by: Christoph Hellwig <hch@lst.de>
>>
>> ...
>>
>>> @@ -8831,9 +8821,10 @@ int btrfs_start_delalloc_roots(struct btrfs_fs_info *fs_info, long nr,
>>>                              &fs_info->delalloc_roots);
>>>               spin_unlock(&fs_info->delalloc_root_lock);
>>>
>>> -             ret = start_delalloc_inodes(root, &wbc, false, in_reclaim_context);
>>> +             ret = start_delalloc_inodes(root, nr_to_write, false,
>>> +                             in_reclaim_context);
>>>               btrfs_put_root(root);
>>> -             if (ret < 0 || wbc.nr_to_write <= 0)
>>> +             if (ret < 0 || nr <= 0)
>>
>> Before this change, wbc.nr_to_write will indicate what's remaining, not what you
>> asked for. So I think you need a change like you did in start_delalloc_inodes(),
>> no ?
> 
> I understand nr is updated to what's remaining using the nr_to_write
> pointer in start_delalloc_inodes(). Right?

Oh! Yes, nr_to_write points to nr... Sorry about the noise.

So Reviewed-by: Damien Le Moal <dlemoal@kernel.org>



-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
