Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9799EBA8
	for <lists+jfs-discussion@lfdr.de>; Tue, 27 Aug 2019 16:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YOxz9hW5hiEs5/D6br/VTMQ1WB2Rp+Okv/cSkTDooaI=; b=D2XM58ScAoP2jk4BdS86aL0Rt3
	JF8T0X2bJBwThEV+jusnOU1DJGmlCFp0u0laapzVRfv2sBu/fdH/yEs7cWAutsxce1zie5I4d2mTO
	kOC8ODzooSTcmXjXxnEaRBi1vPG4TO1tTvPF3anx6jCfZZb7bbJ4954FHIrafU7I2/gk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1i2ctF-0003Bj-0u; Tue, 27 Aug 2019 14:56:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <salyzyn@android.com>) id 1i2cs4-0007hq-Bv
 for jfs-discussion@lists.sourceforge.net; Tue, 27 Aug 2019 14:54:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J0PyrXbgy2rQbHf32v3WQfO8h7H5WwZ0x8ImHOimCWs=; b=a2468NQlOxUuo7f/3akZeQMtpp
 pQ6zahzEh/pcD9fS3XwPHJLqKAkye5w1PG6YzMLC8cCtymopcEh58kqHtMuZiiysXV+HVl2LidNGa
 sXBDoxeUphbWCnSj/fDOkykfG4pp/78VXD/UWvAFTYor9vxspBKr4KeqMVQYNgwEpS8Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J0PyrXbgy2rQbHf32v3WQfO8h7H5WwZ0x8ImHOimCWs=; b=ZYGFDPVnZf9SuuMExWcTt14geH
 wGQWruRouGlaGE7uovaBdW3Aj0dVRpl0nJRrQAmzQ4QC/Mgye4xpyLdD/VyXxUoft0Oc2MolT0fH5
 aJf9N1AQH+ah5rVX/wol5wWk83pzGimMJHD8Dw5LikGihOjkY8Abyh2LwJ6ZFbnFZTHM=;
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i2cs2-000Dph-1l
 for jfs-discussion@lists.sourceforge.net; Tue, 27 Aug 2019 14:54:56 +0000
Received: by mail-pf1-f195.google.com with SMTP id v12so14275698pfn.10
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 27 Aug 2019 07:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=J0PyrXbgy2rQbHf32v3WQfO8h7H5WwZ0x8ImHOimCWs=;
 b=mzwUwotHCHLyC8kvJQKX2qfkclXUibOZVKlCSAmub430gCcW4lmMANVBjk4ZJn37Mz
 lmwqaekfvRnk91fWBTPe9MdR6DNIOZYbn1kKQlCtB2EIRUw9eVK89gLHZxbOnS+BoN9O
 z/e+lec1c3V+A/cevmzn6YhUNeV1qLcxR5P5ZMIEm0QeC99vQIqrptkzAecOAow3P+WG
 qTbXtfhvLGsZsqUEkNrN67J91EYh7XB3OB1b7OQP26/5Ffe7WcOAgQyPgjx4Kr7W8Oc+
 UwQjFeNzqy6bSLsp44PwvDCnhYQ/gCS2wppnuYUD4QcGMN8OxcAFpKCWSwZ+EWDarzDN
 vqDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=J0PyrXbgy2rQbHf32v3WQfO8h7H5WwZ0x8ImHOimCWs=;
 b=cY7jV6KrVGVsEfIBjvMG6YwIoD4220ojqrGq77WJ1rQIKWB8IZVdqwW/OBYRE4aARF
 G4DUsUYtyO4kX7QkWks0yRCCsVyqnQ6n1fBStdP2CZ4NJgcHXb82QYd2q5sOGV7uIB/2
 I+b0fvvJm0rF69GcTJfJFSJCeY924Hr6IgRfqYx7/7qlOPfSwAT7nSwFNMtb1eseer88
 HAaLgbpyb3iMzUGOAdGia626CmKnUAHTWt7qTkM3J43gUn3YDVwRG/VyZllTv8ysRD4k
 5DbBvT7tlrWPJ0EZjFkzTJrGAz1p4i6EkSK7DYKhquwWcWfdsms+KJjbS0BS1yQYpejo
 mh0w==
X-Gm-Message-State: APjAAAU+5IV86yXqbu0sG5pUiEEnDvAp7eBfDTRHJx8H1+lB2LJkkjxD
 77deb/EOqE47vLY/2QjzQcla6A==
X-Google-Smtp-Source: APXvYqwBoH7/mHEw1qHJ4C0pvUdOnWf9w3cFM7T1JRRoXNt8gEzBDpTDPLau8WREch+lyRDJT+u4BA==
X-Received: by 2002:a65:6891:: with SMTP id e17mr20940506pgt.305.1566917687986; 
 Tue, 27 Aug 2019 07:54:47 -0700 (PDT)
Received: from nebulus.mtv.corp.google.com
 ([2620:15c:211:200:5404:91ba:59dc:9400])
 by smtp.googlemail.com with ESMTPSA id
 s125sm30946505pfc.133.2019.08.27.07.54.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Aug 2019 07:54:47 -0700 (PDT)
To: Jan Kara <jack@suse.cz>
References: <20190820180716.129882-1-salyzyn@android.com>
 <20190827141952.GB10098@quack2.suse.cz>
Message-ID: <8468b22d-05b7-47d3-eb93-2c71dafea3ee@android.com>
Date: Tue, 27 Aug 2019 07:54:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827141952.GB10098@quack2.suse.cz>
Content-Language: en-GB
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.cz]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1i2cs2-000Dph-1l
X-Mailman-Approved-At: Tue, 27 Aug 2019 14:56:07 +0000
Subject: Re: [Jfs-discussion] [PATCH v7] Add flags option to get xattr
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Sandeen <sandeen@sandeen.net>,
 Mike Marshall <hubcap@omnibond.com>, linux-xfs@vger.kernel.org,
 James Morris <jmorris@namei.org>, devel@lists.orangefs.org,
 Eric Van Hensbergen <ericvh@gmail.com>, Joel Becker <jlbec@evilplan.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jan Kara <jack@suse.com>, Casey Schaufler <casey@schaufler-ca.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dave Kleikamp <shaggy@kernel.org>,
 linux-doc@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 Chao Yu <yuchao0@huawei.com>, Mimi Zohar <zohar@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>, linux-cifs@vger.kernel.org,
 Paul Moore <paul@paul-moore.com>, "Darrick J. Wong" <darrick.wong@oracle.com>,
 Hugh Dickins <hughd@google.com>, kernel-team@android.com,
 selinux@vger.kernel.org, Brian Foster <bfoster@redhat.com>,
 reiserfs-devel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Miklos Szeredi <miklos@szeredi.hu>, linux-f2fs-devel@lists.sourceforge.net,
 Benjamin Coddington <bcodding@redhat.com>, linux-integrity@vger.kernel.org,
 Martin Brandenburg <martin@omnibond.com>, Chris Mason <clm@fb.com>,
 linux-mtd@lists.infradead.org, linux-afs@lists.infradead.org,
 Jonathan Corbet <corbet@lwn.net>,
 Allison Henderson <allison.henderson@oracle.com>,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 Stephen Smalley <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 Gao Xiang <gaoxiang25@huawei.com>, Eric Paris <eparis@parisplace.org>,
 ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, samba-technical@lists.samba.org,
 Steve French <sfrench@samba.org>, Bob Peterson <rpeterso@redhat.com>,
 Tejun Heo <tj@kernel.org>, linux-erofs@lists.ozlabs.org,
 Anna Schumaker <anna.schumaker@netapp.com>, ocfs2-devel@oss.oracle.com,
 jfs-discussion@lists.sourceforge.net, Eric Biggers <ebiggers@google.com>,
 Dominique Martinet <asmadeus@codewreck.org>, Jeff Mahoney <jeffm@suse.com>,
 linux-unionfs@vger.kernel.org, David Howells <dhowells@redhat.com>,
 linux-mm@kvack.org, Andreas Dilger <adilger.kernel@dilger.ca>,
 devel@driverdev.osuosl.org, "J. Bruce Fields" <bfields@redhat.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Sage Weil <sage@redhat.com>,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 linux-security-module@vger.kernel.org, cluster-devel@redhat.com,
 v9fs-developer@lists.sourceforge.net, Bharath Vedartham <linux.bhar@gmail.com>,
 Jann Horn <jannh@google.com>, ecryptfs@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, Dave Chinner <dchinner@redhat.com>,
 David Sterba <dsterba@suse.com>, Artem Bityutskiy <dedekind1@gmail.com>,
 netdev@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 stable@vger.kernel.org, Tyler Hicks <tyhicks@canonical.com>,
 =?UTF-8?Q?Ernesto_A=2e_Fern=c3=a1ndez?= <ernesto.mnd.fernandez@gmail.com>,
 Phillip Lougher <phillip@squashfs.org.uk>,
 David Woodhouse <dwmw2@infradead.org>, linux-btrfs@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 8/27/19 7:19 AM, Jan Kara wrote:
> On Tue 20-08-19 11:06:48, Mark Salyzyn wrote:
>> diff --git a/Documentation/filesystems/Locking b/Documentation/filesystems/Locking
>> index 204dd3ea36bb..e2687f21c7d6 100644
>> --- a/Documentation/filesystems/Locking
>> +++ b/Documentation/filesystems/Locking
>> @@ -101,12 +101,10 @@ of the locking scheme for directory operations.
>>   ----------------------- xattr_handler operations -----------------------
>>   prototypes:
>>   	bool (*list)(struct dentry *dentry);
>> -	int (*get)(const struct xattr_handler *handler, struct dentry *dentry,
>> -		   struct inode *inode, const char *name, void *buffer,
>> -		   size_t size);
>> -	int (*set)(const struct xattr_handler *handler, struct dentry *dentry,
>> -		   struct inode *inode, const char *name, const void *buffer,
>> -		   size_t size, int flags);
>> +	int (*get)(const struct xattr_handler *handler,
>> +		   struct xattr_gs_flags);
>> +	int (*set)(const struct xattr_handler *handler,
>> +		   struct xattr_gs_flags);
> The prototype here is really "struct xattr_gs_flags *args", isn't it?
> Otherwise feel free to add:
>
> Reviewed-by: Jan Kara <jack@suse.cz>
>
> for the ext2, ext4, ocfs2, reiserfs, and the generic fs/* bits.
>
> 								Honza

<oops> Thanks and good catch, will respin with a fix to the 
documentation shortly.

-- Mark



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
