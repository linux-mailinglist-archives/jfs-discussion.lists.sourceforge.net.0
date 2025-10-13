Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2530BD9FC7
	for <lists+jfs-discussion@lfdr.de>; Tue, 14 Oct 2025 16:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I1XHxNVLzYzY/yuhacIj9lZ48nDPIbzKspB22iNnrz8=; b=LI17cy5xsLmVcg5DYuHG4h/F9B
	lNs/tTAftsvPEf3kWS+Cit2lcpf+do8s4bF6l/OUJhlHNhrzr5ulQouKHT/TQozukzFrumY9NLWfz
	5EI02U5GUXHDQ4yHZfRrCrxu6Qhd+sT4iXf8nIEZeX0zoVFdDMYwuDIWGUKGGC4T1mew=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8fyI-0006ZS-BW;
	Tue, 14 Oct 2025 14:25:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <daniel.vacek@suse.com>) id 1v8DiG-0003wk-BX
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R740my9A/r0yGv8JF/opdryBZzIxczQeXr2k5izULh4=; b=N2MH9D5vP9MXVcR2ASsIS2kGbU
 BqVVRAhLjEORbRPD41iGKbNAfW9sZHyfrs2yg+4u+aG5+Qm9MfXcMkyAyPNVvtQr9GUZqLBJsVDDx
 NqNs9LlVzvV0jCLArlbMLzXcKBioo6IhnHpinAbldpxCWEFyAtpHFYxjBMiyf33HZ4hI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R740my9A/r0yGv8JF/opdryBZzIxczQeXr2k5izULh4=; b=VaqtM3N5pXj0P4J/19boY177z5
 8Bwqb6+X/Sv5Zq6sq3t8VzD0eJqXEKC3ofL9qMJC2sNZ1GpFl5MOEhKuTqkRYJpF3PvG79p0L3kQT
 GsqOXxtHLN0ddH/o/hv5Nefc6ijZ1tGM2XNBsf4OJPwc1c3dWhEnMOmKCsqZ9rFXZs0w=;
Received: from mail-wr1-f43.google.com ([209.85.221.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8DiF-0006HX-VX for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:15:24 +0000
Received: by mail-wr1-f43.google.com with SMTP id
 ffacd0b85a97d-3f44000626bso2748888f8f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 13 Oct 2025 01:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1760343312; x=1760948112; darn=lists.sourceforge.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=R740my9A/r0yGv8JF/opdryBZzIxczQeXr2k5izULh4=;
 b=S4rkcQ+cVAMgur+8SzHUzVTslQ3LokRMC1kojDmVpCnzzLO8BFGvYOtH8klqaajPwr
 aIzdtYlYVVnlpCe90aWQQbrObj/6/JehEDmmdkKrrgFm97dVSjVvHu+46/Xs52IgMrNr
 2cxw+SqiVqaWoFtOae+9S8mbNeoiTGeoahhRkeVVed6MuJRlnZVFWDUW1iHBVr/VNENV
 qr9BW4xECBlO17Dm6YqPI9zEtqOrNsjuWrR8h7Swc4JiVZZ1jC+WVe46v4HnYYkRyGAl
 ASJnJTjWahNfh/FGMhFh3pW2m6HIGO8+00m6d/mGc+gLqS75y3P1hU3K9DQ4LbUwBtCE
 LFcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760343312; x=1760948112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=R740my9A/r0yGv8JF/opdryBZzIxczQeXr2k5izULh4=;
 b=TOx8QXuyZhy/v6a7cq6daaleq85Fp5eC154RG8z3K2SrsIVgLyFV+oxyPmDkzF7xY1
 4w1/b3Q/46NY/HK6hUQj8CtZwA1lH92eyPyyszIsE4gvNTeloznTXxkggToqT0KaCbrg
 l8GMDLOtcYGKqKpv2SwElfq9Ozd9zP4NXxX4YMg3z7dOl87ONEu7fTEEu3QUm98EO2hE
 EiG7kID5q0wxra4AtHpwrh98ZDv9MdhOMQua5oK+MtQsc+4Rip+cFS/DHUzFT+cprkhz
 aIH63gKbiTkMvvd6DjlwMyqQ3kmGaAFzPHqR8vXMRRXqYfHcPwbWc32RxqVQGstX8ljy
 z5jQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUv/8fzXkDkVp50gMTQc+G6//dXIwf/nZqbaIfJRXz4SDY6/dyXV/U7OyNYSf45Fy/RxLvPQusTv7sKgNiCvQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyuLZ5zOYUW6ruSOsxpZE4+F2ctpe54UtP6QS79EwogJoZpXG+o
 ROOUxq/swzEnmQsQdYZseYlrmb1oWi3BCskQTzPue+kXiJK+59luB47+XMQ9Fhi29Ok27j2zoOH
 TY466/9AeL0ZCTuO0xQBau7G4ewRp8ZWgBZL0P+jq+w==
X-Gm-Gg: ASbGncuAdAm2nrO+dP6TrvVf916lZA3gjDpDSQP0oL/4EySR7RrmuHEWEj1QSL3zgxD
 InVpiKIKt72DONPMpJJn5Q+09mb9E9/3/fNO8155bHMCTV36S+4exQIGtU0D8S+AZJC8ua0AAcR
 nUDOROy52iCjREFk6UgX0q9nuPXp5OPihQBDy2ZJajUdNCVu80KFTRtWUBa+VLB14iu2rWd3Usg
 +RTrdKdbGsM8Q0Q9jPRXQq/LtuRoutSTUI=
X-Google-Smtp-Source: AGHT+IEXSnK8vgh5qb4+sZ5l2hFRJWnorbBdcfDu2E4RvgYsaMIAeq5q8p6/Cp6GKDAeCkB0EX+DEBuZJrHy3pYKRvM=
X-Received: by 2002:a05:6000:430b:b0:3ed:e1d8:bd72 with SMTP id
 ffacd0b85a97d-42666da6dc9mr13043087f8f.17.1760343312390; Mon, 13 Oct 2025
 01:15:12 -0700 (PDT)
MIME-Version: 1.0
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-6-hch@lst.de>
 <65aad714-3f1d-4f4b-bb8f-6f751ff756b7@kernel.org>
In-Reply-To: <65aad714-3f1d-4f4b-bb8f-6f751ff756b7@kernel.org>
Date: Mon, 13 Oct 2025 10:15:01 +0200
X-Gm-Features: AS18NWCgT3XSP_MN-BMfr65K92-imDhnpGub1dZ7jpbkZ5N0Fj6p03e4QIM-oxw
Message-ID: <CAPjX3FdRvkie6XMvAjSXb4=8bcjeg1qNjYVT5KOBUDrc+H=nDQ@mail.gmail.com>
To: Damien Le Moal <dlemoal@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 13 Oct 2025 at 09:56,
 Damien Le Moal <dlemoal@kernel.org>
 wrote: > > On 2025/10/13 11:58, Christoph Hellwig wrote: > > In preparation
 for changing the filemap_fdatawrite_wbc API to not expose [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.43 listed in wl.mailspike.net]
X-Headers-End: 1v8DiF-0006HX-VX
X-Mailman-Approved-At: Tue, 14 Oct 2025 14:25:49 +0000
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
From: Daniel Vacek via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Daniel Vacek <neelx@suse.com>
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

On Mon, 13 Oct 2025 at 09:56, Damien Le Moal <dlemoal@kernel.org> wrote:
>
> On 2025/10/13 11:58, Christoph Hellwig wrote:
> > In preparation for changing the filemap_fdatawrite_wbc API to not expose
> > the writeback_control to the callers, push the wbc declaration next to
> > the filemap_fdatawrite_wbc call and just pass thr nr_to_write value to
>
> s/thr/the
>
> > start_delalloc_inodes.
> >
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
>
> ...
>
> > @@ -8831,9 +8821,10 @@ int btrfs_start_delalloc_roots(struct btrfs_fs_info *fs_info, long nr,
> >                              &fs_info->delalloc_roots);
> >               spin_unlock(&fs_info->delalloc_root_lock);
> >
> > -             ret = start_delalloc_inodes(root, &wbc, false, in_reclaim_context);
> > +             ret = start_delalloc_inodes(root, nr_to_write, false,
> > +                             in_reclaim_context);
> >               btrfs_put_root(root);
> > -             if (ret < 0 || wbc.nr_to_write <= 0)
> > +             if (ret < 0 || nr <= 0)
>
> Before this change, wbc.nr_to_write will indicate what's remaining, not what you
> asked for. So I think you need a change like you did in start_delalloc_inodes(),
> no ?

I understand nr is updated to what's remaining using the nr_to_write
pointer in start_delalloc_inodes(). Right?

--nX

> >                       goto out;
> >               spin_lock(&fs_info->delalloc_root_lock);
> >       }
>
>
> --
> Damien Le Moal
> Western Digital Research
>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
