Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 526537A95A0
	for <lists+jfs-discussion@lfdr.de>; Thu, 21 Sep 2023 17:49:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qjLuu-00017k-0Q;
	Thu, 21 Sep 2023 15:48:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <xiubli@redhat.com>) id 1qj7vH-0003g8-0O
 for jfs-discussion@lists.sourceforge.net;
 Thu, 21 Sep 2023 00:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TFI5WmIh4My0R+y7lKbpmUV46PPypYnH5zMhfJ0bQVY=; b=GupluyfccsKjaZLbPlrCV+y268
 BzXWbuUT6VSHtvPQUX09sPsmURzmUbUmCgqWcOT/QzJfiLEp7WHkrmZyEPkBXS8RgQPzxZc1KIvGL
 tRhe5mB2NJvCPQQCubb5WCNfPzqdEY0wju1rkaNR4RV3wDbpeKtJoisnjl5DO5MyoOZ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TFI5WmIh4My0R+y7lKbpmUV46PPypYnH5zMhfJ0bQVY=; b=Pxk3vzZskE9bznueXlA0MMq109
 /1ZSIgx1uBiY7A9CrJj/oxBY3/7FTz2VP2tc91gavrotvDcwJwkOkbe0/x3TN7SiLh+cLxMqxkuWX
 GrQbJG+FJUudyJLHdgi7iOyvQEo3wnNOJQ+1GHjCPzZy9F/RrbrRBkhULwJjPIugCemg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qj7v9-00HUTa-8t for jfs-discussion@lists.sourceforge.net;
 Thu, 21 Sep 2023 00:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695257508;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TFI5WmIh4My0R+y7lKbpmUV46PPypYnH5zMhfJ0bQVY=;
 b=MoUIaWd3HkS/6H2v3g2U6xksOHXcDd5gMV2liXhQfTaNBsgOi9Vl/K9b1iCOLiMqRYYY6U
 KSq4bXUtV1gIpjeZL78GnVIsrH/qKP+75CLX63xhBYzM4ULDZV15NpuapzljOuHD968Blw
 Ir6P5U+cgXApf+sJO6Du5sW+XZO0fTE=
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com
 [209.85.160.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-665-DG4WnKppO6-ojBRIOpFrJw-1; Wed, 20 Sep 2023 20:51:47 -0400
X-MC-Unique: DG4WnKppO6-ojBRIOpFrJw-1
Received: by mail-oa1-f70.google.com with SMTP id
 586e51a60fabf-1c0ed186cf5so592835fac.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 20 Sep 2023 17:51:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695257507; x=1695862307;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TFI5WmIh4My0R+y7lKbpmUV46PPypYnH5zMhfJ0bQVY=;
 b=umm3rPm4zTYhWrfGXyZLT6Bw2rciy6hmD0PJVaeEb1Q2q70Yd2aqEgqbwhUeF32t0/
 AfFD9CvCnTMkGsnbmnbTmPIWIk2/0pSkyS0BrTMLPn32Tkz5MuxWRhHu330g38mTA65U
 sgRQ8lGd/OnvnED9hHbpu6m2DOG7nmMyUaertFmuC4iETDobl+JHBfT2QKetgdfl1U47
 Cgqrbzs8MWyrtwyoznv6QyZWdqV6k3qnj8LuOx1eboUBfBVK6AWgLrMjB7LNegh1ECmy
 nWWULSkKOxR9RSj4mrCc2kowH9qfY9V+tQ0Naz8piOeZZDrvpByNZHhIqkUk+kc8BHmC
 48Gg==
X-Gm-Message-State: AOJu0YzMnjdlC5CHShqtK0bpHJD5hFdI210tes9Mo6RYZ5oupp2ftUKQ
 CR5nVTIIfuevA5vQzMUDd2VRHoUykERr7WSPzT7D6hXfchlijfY/XEjrCbwaGrov6q1+Jxs1XL8
 Mw0X1PNH7v2yU2I2bVOdIVyk5JKyXrnKece0=
X-Received: by 2002:a05:6870:5622:b0:1be:f23f:99b with SMTP id
 m34-20020a056870562200b001bef23f099bmr4401514oao.42.1695257507064; 
 Wed, 20 Sep 2023 17:51:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7X444xzNTr4txbg0xM0A5uyV0tfIQjl2wXSUHMAGPu5TLRpN4bMw26THHBcBC+GsfKNwKjA==
X-Received: by 2002:a05:6870:5622:b0:1be:f23f:99b with SMTP id
 m34-20020a056870562200b001bef23f099bmr4401508oao.42.1695257506782; 
 Wed, 20 Sep 2023 17:51:46 -0700 (PDT)
Received: from [10.72.113.125] ([43.228.180.230])
 by smtp.gmail.com with ESMTPSA id
 bi17-20020a056a00311100b00682bec0b680sm127170pfb.89.2023.09.20.17.51.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 Sep 2023 17:51:46 -0700 (PDT)
Message-ID: <2ed5afa7-7ca7-87d2-ea84-5e80485bae97@redhat.com>
Date: Thu, 21 Sep 2023 08:51:41 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Max Kellermann <max.kellermann@ionos.com>,
 Ilya Dryomov <idryomov@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 Jan Kara <jack@suse.com>, Dave Kleikamp <shaggy@kernel.org>
References: <20230919081900.1096840-1-max.kellermann@ionos.com>
In-Reply-To: <20230919081900.1096840-1-max.kellermann@ionos.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 9/19/23 16:18, Max Kellermann wrote: > Signed-off-by: Max
 Kellermann <max.kellermann@ionos.com> > --- > fs/ceph/super.h | 1 + >
 fs/ext2/acl.h
 | 1 + > fs/jfs/jfs_acl.h | 1 + > include/linux/posix_ac [...] 
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qj7v9-00HUTa-8t
X-Mailman-Approved-At: Thu, 21 Sep 2023 15:48:34 +0000
Subject: Re: [Jfs-discussion] [PATCH] fs: apply umask if POSIX ACL support
 is disabled
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
From: Xiubo Li via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Xiubo Li <xiubli@redhat.com>
Cc: ceph-devel@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-kernel@vger.kernel.org, jfs-discussion@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


On 9/19/23 16:18, Max Kellermann wrote:
> Signed-off-by: Max Kellermann <max.kellermann@ionos.com>
> ---
>   fs/ceph/super.h           | 1 +
>   fs/ext2/acl.h             | 1 +
>   fs/jfs/jfs_acl.h          | 1 +
>   include/linux/posix_acl.h | 1 +
>   4 files changed, 4 insertions(+)
>
> diff --git a/fs/ceph/super.h b/fs/ceph/super.h
> index 51c7f2b14f6f..e7e2f264acf4 100644
> --- a/fs/ceph/super.h
> +++ b/fs/ceph/super.h
> @@ -1194,6 +1194,7 @@ static inline void ceph_forget_all_cached_acls(struct inode *inode)
>   static inline int ceph_pre_init_acls(struct inode *dir, umode_t *mode,
>   				     struct ceph_acl_sec_ctx *as_ctx)
>   {
> +	*mode &= ~current_umask();
>   	return 0;
>   }

This LGTM.

Shouldn't we also do this in 'ceph_pre_init_acls()' when we couldn't get 
'acl' from 'posix_acl_create()' ?

Thanks!

- Xiubo


>   static inline void ceph_init_inode_acls(struct inode *inode,
> diff --git a/fs/ext2/acl.h b/fs/ext2/acl.h
> index 4a8443a2b8ec..694af789c614 100644
> --- a/fs/ext2/acl.h
> +++ b/fs/ext2/acl.h
> @@ -67,6 +67,7 @@ extern int ext2_init_acl (struct inode *, struct inode *);
>   
>   static inline int ext2_init_acl (struct inode *inode, struct inode *dir)
>   {
> +	inode->i_mode &= ~current_umask();
>   	return 0;
>   }
>   #endif
> diff --git a/fs/jfs/jfs_acl.h b/fs/jfs/jfs_acl.h
> index f892e54d0fcd..10791e97a46f 100644
> --- a/fs/jfs/jfs_acl.h
> +++ b/fs/jfs/jfs_acl.h
> @@ -17,6 +17,7 @@ int jfs_init_acl(tid_t, struct inode *, struct inode *);
>   static inline int jfs_init_acl(tid_t tid, struct inode *inode,
>   			       struct inode *dir)
>   {
> +	inode->i_mode &= ~current_umask();
>   	return 0;
>   }
>   
> diff --git a/include/linux/posix_acl.h b/include/linux/posix_acl.h
> index 0e65b3d634d9..54bc9b1061ca 100644
> --- a/include/linux/posix_acl.h
> +++ b/include/linux/posix_acl.h
> @@ -128,6 +128,7 @@ static inline void cache_no_acl(struct inode *inode)
>   static inline int posix_acl_create(struct inode *inode, umode_t *mode,
>   		struct posix_acl **default_acl, struct posix_acl **acl)
>   {
> +	*mode &= ~current_umask();
>   	*default_acl = *acl = NULL;
>   	return 0;
>   }



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
