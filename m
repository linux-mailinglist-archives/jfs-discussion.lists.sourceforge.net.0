Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F33AF023E
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 Nov 2019 17:06:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+8bj5aNG9stVeMYHgdViDtkGmHJQigCQmjDJfdZIaFg=; b=ja1l/olWkpotiTxUfggopR/Map
	Cz2lel/YhDMNiUiFxGyVWQyefBJmPB0Xh1OD4BMWFjIsKcqltCKvjq3qKJWk2qX7m1Bb5j+fCAvsQ
	/y5WcQNAW+bCGF/IMOhEs1SbL4kdm8ElPBLLQS+0SnDaN3wGVMMRYImUQfRIs1bpuU5Q=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1iS1LA-0001qE-2U; Tue, 05 Nov 2019 16:05:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <salyzyn@android.com>) id 1iS0tO-0004WL-W0
 for jfs-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 15:37:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2/8/BwrhtmEXI7dj68SMTpCzdsjoLETsRSfZ5j8yePw=; b=AFXGvqGMbX+60v6PtR/E8Q1kQl
 SGrkYXIc35qJIgDT/JdbmeHnB8QBZWddUhq61LNa3O7HL9NAMzndmKrMLC1JJNndh4aMrbHKPFYEj
 rhQ7Tf6lXZFZj5nZ5APZqJ6rMFg6QuSXxU6zkzfe1FWvXtvj7ygxrSOx8AEeaizy1RIw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2/8/BwrhtmEXI7dj68SMTpCzdsjoLETsRSfZ5j8yePw=; b=AMZVbporIAuKi6zkr59FI01o6+
 I/pYqHWgLzcChKcX4E8f1zwl8IFC0CSMlMwsDwxou68QyYGQgG67hT2Gznsbmiu7DLNVzQTm1uKJD
 FeC9LPuwkQrqrq3WwkxRgiFeiRx12eaZ+bDfCVwcBBZA4pL3ZWNnzASyN9CF8k9OMLuo=;
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iS0tN-0011SB-Oh
 for jfs-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 15:37:14 +0000
Received: by mail-pg1-f195.google.com with SMTP id l24so14466318pgh.10
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 05 Nov 2019 07:37:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=2/8/BwrhtmEXI7dj68SMTpCzdsjoLETsRSfZ5j8yePw=;
 b=R8lPpHZaNTKC1//4X3YRy/co01wfSuPnFkkkoDrdRRcs8xZqXtNYPLgm9OjzsXnJfg
 w/sgCdd9n+99HdKAd13HjrpckBRQK4F+I41/fuJw7ICMDJgQ0tKfn8kAw++u9jIK9Pl7
 wc3lGWI+tLAg5Fo7mlf+u1oz4ZCnt5dRpAwNiKM1EwVqGR4FwH3zMLPET/FX6DvXl/Cq
 XMn8MNwm1G21DoBMHo9twX6ox9SH+JhzmjDChdy5f2tzhmNnEaRv4FiGKkmYlD/OTP+l
 39M21mPDgGHAV1JVejM/uCulS4TGW/MwgQAeZfS0L3/q73lP5U74GqdSjn6t5WS3czii
 QV3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=2/8/BwrhtmEXI7dj68SMTpCzdsjoLETsRSfZ5j8yePw=;
 b=Gc3XUbsS6NeKeYHlPE0gJIbc46mQua8TvQpU3IgwumgPfnJ0lLFBn4g6V+N2HZGGjE
 hrD8TFcOy4xg0pZt5aZl8WX43n6wg9IAdDd6N8HU3hnPdC5m7+yNxi48jVnci2Wwp4W7
 mBzJi3kWsxruGHXC43zlIJo39uOpBFh8RdbaDx2FRRPo7XHkvlcx5UXOnFLvQKJP7WcU
 VircYO1viIg9SBaxHNqYHy9E1KpsaS4sBf42J7RQbdxF3m1kMjieomNcfXwqqMGSd2wX
 up5BtSV4twCv6Wxn7UkSAZAq4RHiwig01aIRXbeGyksBXqQiWlDxJheb5dfV4lOiKnc5
 Dl2w==
X-Gm-Message-State: APjAAAVGdEhKspzUD5Plm6He48E9trqaBcjGSCzAOcH6zNQBJN0MUP3j
 V0y1AlKhq7LsAcl9rIMB1lRuYg==
X-Google-Smtp-Source: APXvYqy6Q+jW7Nx8yhUJvITL/ENlgb+bvGP0zh9whSnmepYB/pthS+WgqdQwDBfJOEs5VO1iezn2Pw==
X-Received: by 2002:a62:e519:: with SMTP id n25mr38428065pff.144.1572968227784; 
 Tue, 05 Nov 2019 07:37:07 -0800 (PST)
Received: from nebulus.mtv.corp.google.com
 ([2620:15c:211:200:5404:91ba:59dc:9400])
 by smtp.googlemail.com with ESMTPSA id m13sm18037460pga.70.2019.11.05.07.37.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Nov 2019 07:37:07 -0800 (PST)
To: Jan Kara <jack@suse.cz>
References: <20191104215253.141818-1-salyzyn@android.com>
 <20191104215253.141818-2-salyzyn@android.com>
 <20191105094830.GL22379@quack2.suse.cz>
Message-ID: <1de43656-e751-53a2-c0da-ff44ecbabbc4@android.com>
Date: Tue, 5 Nov 2019 07:37:04 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191105094830.GL22379@quack2.suse.cz>
Content-Language: en-GB
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iS0tN-0011SB-Oh
X-Mailman-Approved-At: Tue, 05 Nov 2019 16:05:54 +0000
Subject: Re: [Jfs-discussion] [PATCH v15 1/4] Add flags option to get xattr
 method paired to __vfs_getxattr
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
From: Mark Salyzyn via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Mark Salyzyn <salyzyn@android.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net, linux-doc@vger.kernel.org,
 linux-integrity@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Martin Brandenburg <martin@omnibond.com>, samba-technical@lists.samba.org,
 Dominique Martinet <asmadeus@codewreck.org>,
 Artem Bityutskiy <dedekind1@gmail.com>,
 Adrian Hunter <adrian.hunter@intel.com>, David Howells <dhowells@redhat.com>,
 Chris Mason <clm@fb.com>, "David S. Miller" <davem@davemloft.net>,
 Andreas Dilger <adilger.kernel@dilger.ca>, Eric Paris <eparis@parisplace.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, netdev@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
 Mike Marshall <hubcap@omnibond.com>, linux-xfs@vger.kernel.org,
 linux-unionfs@vger.kernel.org, Andreas Gruenbacher <agruenba@redhat.com>,
 Sage Weil <sage@redhat.com>, "Darrick J . Wong" <darrick.wong@oracle.com>,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 Eric Biggers <ebiggers@google.com>, Hugh Dickins <hughd@google.com>,
 James Morris <jmorris@namei.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, cluster-devel@redhat.com,
 selinux@vger.kernel.org, Benjamin Coddington <bcodding@redhat.com>,
 Casey Schaufler <casey@schaufler-ca.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 Stephen Smalley <sds@tycho.nsa.gov>, linux-mm@kvack.org,
 Mark Salyzyn <salyzyn@google.com>, Serge Hallyn <serge@hallyn.com>,
 ecryptfs@vger.kernel.org, linux-cifs@vger.kernel.org,
 Eric Van Hensbergen <ericvh@gmail.com>, Chao Yu <chao@kernel.org>,
 linux-erofs@lists.ozlabs.org, Josef Bacik <josef@toxicpanda.com>,
 reiserfs-devel@vger.kernel.org, Miklos Szeredi <miklos@szeredi.hu>,
 Joel Becker <jlbec@evilplan.org>, linux-mtd@lists.infradead.org,
 Phillip Lougher <phillip@squashfs.org.uk>, David Sterba <dsterba@suse.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, ceph-devel@vger.kernel.org,
 devel@lists.orangefs.org, Gao Xiang <xiang@kernel.org>,
 Mimi Zohar <zohar@linux.ibm.com>, Paul Moore <paul@paul-moore.com>,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-fsdevel@vger.kernel.org, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Mathieu Malaterre <malat@debian.org>, kernel-team@android.com,
 Jonathan Corbet <corbet@lwn.net>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Tyler Hicks <tyhicks@canonical.com>,
 Steve French <sfrench@samba.org>, linux-security-module@vger.kernel.org,
 ocfs2-devel@oss.oracle.com, Jan Kara <jack@suse.com>,
 Bob Peterson <rpeterso@redhat.com>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Woodhouse <dwmw2@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-btrfs@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 11/5/19 1:48 AM, Jan Kara wrote:
>> @@ -228,11 +228,11 @@ static int afs_xattr_get_yfs(const struct xattr_handler *handler,
>>   		break;
>>   	case 1:
>>   		data = buf;
>> -		dsize = snprintf(buf, sizeof(buf), "%u", yacl->inherit_flag);
>> +		dsize = scnprintf(buf, sizeof(buf), "%u", yacl->inherit_flag);
>>   		break;
>>   	case 2:
>>   		data = buf;
>> -		dsize = snprintf(buf, sizeof(buf), "%u", yacl->num_cleaned);
>> +		dsize = scnprintf(buf, sizeof(buf), "%u", yacl->num_cleaned);
>>   		break;
>>   	case 3:
> These scnprintf() changes (and there are more in the patch) probably
> shouldn't be here... Otherwise the patch still looks good to me :).
>
> 								Honza
>
Good catch, they were done in locality, I forgot about them, this patch 
series has been living for almost a year now and time has become its 
enemy ... will spin this as a separate patch. They strike as a security 
issue with the possibility of fragile UAF when the code is maintained by 
future selves.

-- Mark



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
