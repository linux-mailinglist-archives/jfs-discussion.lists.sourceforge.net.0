Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF417908FF
	for <lists+jfs-discussion@lfdr.de>; Sat,  2 Sep 2023 19:46:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qcUgm-0007HT-9l;
	Sat, 02 Sep 2023 17:45:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qcUgl-0007HN-9H
 for jfs-discussion@lists.sourceforge.net;
 Sat, 02 Sep 2023 17:45:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F+CEe1kQgL3CtWd7NtdDdKsaq4sRrpDW37EyXWEdo+I=; b=Qh4OLx2Oxjb0mqXrrseWfw4p0t
 KqnFEiX2mEj6dzAI788Gq+JVCt/8PaTIP1oR6d6SQibX3OFPeHq+HAvOGIKEVwJRzSOCUA63FRtw2
 KAiz+D46p6D3DqnExIkCk4HvBV0/yKTYfzHG5E9SJ0t8E/MuLKsuVWLH1x9D7Pwg8614=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F+CEe1kQgL3CtWd7NtdDdKsaq4sRrpDW37EyXWEdo+I=; b=cCNH7RlKb/qN5aVSSnM0xue7s2
 MErUj6goy8RURdOlaqqk9dZ8nvHOTEgVk5qDRytpg8T4oG1vyh74veBVHM9/rYGgkqGkA/HC3fdTM
 Am1g94+9qmHC1BlOc1nakcwRVo3onBm6AKaARBImfYBcSH/Brq+9h+vjf5ub94zXmlNI=;
Received: from mail-pf1-f172.google.com ([209.85.210.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qcUgi-0072Hc-QP for jfs-discussion@lists.sourceforge.net;
 Sat, 02 Sep 2023 17:45:40 +0000
Received: by mail-pf1-f172.google.com with SMTP id
 d2e1a72fcca58-68cbbff84f6so86345b3a.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 02 Sep 2023 10:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693676731; x=1694281531; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=F+CEe1kQgL3CtWd7NtdDdKsaq4sRrpDW37EyXWEdo+I=;
 b=hU9E49FkKbRTCqRq+jvA+dwWB+DkCwMkrAKOeajPJCrD2THIkKPCgBGS6gsR87r7vP
 LZShWMnvoKEjF6V0YmOZtNucuY0TizlWPa+OPU5vQAR1Yqb2TsjCCKLdJG41W4Wj6rE5
 y4a4BNOdW3u7kV6CxJQ91fQa8ebhUhLfl81eel0sBLUQ5DOOkvLva4k5D84/9SQyEVdr
 q/dJBegJHtlETkF8GjTKdMBo0pF6h6Uzj+zEoVInsVykQ8NxIHv//N9bkLBAN5k15/IU
 hnOFeK8BVkgvTYmbaousp8lKc7j8bbQSEOLr12XB1tX3WwZ/tHT0KcGC22bYVLLEXODI
 dEvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693676731; x=1694281531;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=F+CEe1kQgL3CtWd7NtdDdKsaq4sRrpDW37EyXWEdo+I=;
 b=UC6pD2WO5F+mmPSr+b1K5uOAXkb9VIIfm3VWZv+RsFrbVIJoD2EaBtLBHJ1NYchQXv
 zHUbQFwVo3sYv+sOc+WlEptevYklXIniSDWwcQyFj+uLqaLMnhoeAhg/ucYD/wgDlhpL
 ZCEP0BDe7xwj7lANfTak/r/zt3NmLhydJ106jUUxjdpOJ9tFioOvvaPbHbZBqgAIxjnN
 2hr4J8tsp1AjUbT8JnQHom/SlQg4I9eHQsi+I1xiBzoHz15vX7QaVWNOPQd5HzHWd3T3
 DwuysGSvLfbBX6nUKNqMfQ6iJaTcxy5veYh7w8FMzrhLkMtywZztotVQMCzUgKWDVCKo
 5OAw==
X-Gm-Message-State: AOJu0YxRe+rZgod9IHYpDqjsJFY4Ps3g8PrxsXCPjhiTMehy+q/uTtxq
 Abch+1lDfEhRcppg2pnxjGk=
X-Google-Smtp-Source: AGHT+IHcW13GWHmbrC7g20OUYOCfiODO7gIhf43SwkGdC5kUnbwO3HluVe9PQ4GHWH47f6DSUCa7Rw==
X-Received: by 2002:a05:6a20:2591:b0:14d:6a82:d7ea with SMTP id
 k17-20020a056a20259100b0014d6a82d7eamr7049410pzd.13.1693676730977; 
 Sat, 02 Sep 2023 10:45:30 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.173]) by smtp.gmail.com with ESMTPSA id
 e13-20020a62aa0d000000b006889664aa6csm4817511pff.5.2023.09.02.10.45.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Sep 2023 10:45:30 -0700 (PDT)
Message-ID: <5dd9b332-49e3-877d-125b-1de5b46af4d5@gmail.com>
Date: Sat, 2 Sep 2023 23:15:26 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Dave Kleikamp <dave.kleikamp@oracle.com>, shaggy@kernel.org,
 liushixin2@huawei.com
References: <20230829165244.460154-1-ghandatmanas@gmail.com>
 <e62dbf53-9d74-45e5-b44e-53140672b8b5@oracle.com>
 <ae6ce935-96eb-3d40-f252-54fff7eb0ea9@gmail.com>
 <f9475918-2186-49b8-b801-6f0f9e75f4fa@oracle.com>
Content-Language: en-US
In-Reply-To: <f9475918-2186-49b8-b801-6f0f9e75f4fa@oracle.com>
X-Spam-Score: 1.9 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Actually I was talking about the stree attribute of dmtree
 which is present in both dmaptree and dmapctl. Link :
 https://elixir.bootlin.com/linux/v6.5.1/source/fs/jfs/jfs_dmap.h#L168
 Since it is an array we can add a check for the size of array like the code
 below. Content analysis details:   (1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [103.37.201.173 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.172 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.172 listed in wl.mailspike.net]
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qcUgi-0072Hc-QP
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 dbFindLeaf
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
From: Manas Ghandat via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Manas Ghandat <ghandatmanas@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 syzbot+aea1ad91e854d0a83e04@syzkaller.appspotmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

QWN0dWFsbHkgSSB3YXMgdGFsa2luZyBhYm91dCB0aGUgc3RyZWUgYXR0cmlidXRlIG9mIGRtdHJl
ZSB3aGljaCBpcyAKcHJlc2VudCBpbiBib3RoIGRtYXB0cmVlIGFuZCBkbWFwY3RsLgoKTGluayA6
IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjUuMS9zb3VyY2UvZnMvamZzL2pm
c19kbWFwLmgjTDE2OAoKU2luY2UgaXQgaXMgYW4gYXJyYXkgd2UgY2FuIGFkZCBhIGNoZWNrIGZv
ciB0aGUgc2l6ZSBvZiBhcnJheSBsaWtlIHRoZSAKY29kZSBiZWxvdy4KCgorwqDCoMKgIMKgwqDC
oCDCoMKgwqAgaWYgKHggKyBuID4gKHNpemVvZih0cC0+ZG10X3N0cmVlKS9zaXplb2YoczgpKSkK
K8KgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIHJldHVybiAtRU5PU1BDOwoKT24gMDEvMDkv
MjMgMjI6MzgsIERhdmUgS2xlaWthbXAgd3JvdGU6Cj4gT24gOC8zMS8yMyAxMDoxOUFNLCBNYW5h
cyBHaGFuZGF0IHdyb3RlOgo+PiBJIHdhcyB3b25kZXJpbmcgaWYgd2UgY291bGQgaW1wbGVtZW50
IGEgZ2V0X3RyZWVfc2l6ZSBtYWNybyB3aGVyZWluwqAgCj4+IHdlIGNvdWxkIGZpbmQgdGhlIHRy
ZWUgc2l6ZSBzbyB0aGF0IHdlIGNhbiBkbyB0aGUgY29tcGFyaXNvbi4gU0luY2UgCj4+IHRoZSB0
cC0+ZG10X3N0cmVlIGlzIGFuIGFycmF5IHdlIGNhbiBnZXQgaXRzIHNpemUgYW5kIGZpeCB0aGUg
b3V0IG9mIAo+PiBib3VuZHMuIFdvdWxkIHRoaXMgdGhpbmcgd29yaz8KPgo+IGRtdHJlZV90IGlz
IGEgdW5pb24gb2YgdHdvIG5lYXJseSBpZGVudGljYWwgc3RydWN0dXJlcyB0aGF0IGJvdGggCj4g
Y29udGFpbiBhbiBzdHJlZS4gVGhlIG9ubHkgcmVhbCBkaWZmZXJlbmNlIGluIHRoZSBzdHJ1Y3R1
cmVzIGlzIHRoZSAKPiBzaXplIG9mIHRoZSBzdHJlZSwgc28gZGJGaW5kTGVhZiBkb2Vzbid0IHJl
YWxseSBrbm93IHdoaWNoIGlzIGJlaW5nIAo+IHVzZWQgYnkgdGhlIGNhbGxlci4KPgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9u
IG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
