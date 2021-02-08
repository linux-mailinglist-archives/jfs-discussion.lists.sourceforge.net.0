Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D1831367B
	for <lists+jfs-discussion@lfdr.de>; Mon,  8 Feb 2021 16:13:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l98Du-0006TF-Bb; Mon, 08 Feb 2021 15:13:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1l98Dt-0006T9-J8
 for jfs-discussion@lists.sourceforge.net; Mon, 08 Feb 2021 15:13:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KE1pI9BEiEgOw43MBeIIDsP1Cww7nN8D0TMKS6ehj+U=; b=XB279mVjjQbsLd34fUE0GLNc1u
 IiQDaucwL3viEkwC1txBSQnvSdB0KKt2Vrkkh5HhD6hRzxl679dF743cwJ7cqHfUJ6NBhirT/70po
 X6ChQ6n+Oeh4Hb6dc4wLpMEiAuTK8nSa/p6P7rzHm1IFkml0HRw98fQDg/cO3tBxmSAE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KE1pI9BEiEgOw43MBeIIDsP1Cww7nN8D0TMKS6ehj+U=; b=WyAjGk3DkNZfW3Et8m7KDuTJ+Z
 D5trhlVuDjtT3K6ovnAv4R2yL/5xjfzppT34SK8ZW5oQWt6HOZyEIxfhD0iBAvUhT9RXd4k1l954Q
 3JHWHlqezuw+te7cjBHv4WWKa/IpnjUqujraegzhhMjVStv3ELM9y8IMK3xZ4BeCMzT0=;
Received: from aserp2130.oracle.com ([141.146.126.79])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l98Df-0004f7-VA
 for jfs-discussion@lists.sourceforge.net; Mon, 08 Feb 2021 15:13:09 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 118FAGfS068010;
 Mon, 8 Feb 2021 15:12:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : from : to :
 cc : references : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=KE1pI9BEiEgOw43MBeIIDsP1Cww7nN8D0TMKS6ehj+U=;
 b=UCh1xYJc8yPlKJv3X9oa+uiGIOTmY4+cZ3bM4z1267kSAI46qHwDFrs7m/zjb0XM6EPY
 RPVJ+vpWjsT+wBiviD/5U1pKFNOx/MZSoC3xyhGQbPV0Uq1M1w4q93UTRv3jzKSQM0Xt
 ethkodgTbhm305INtJCzsGC4Or0tcFAUzf9KZZj8SENFYZKLRcR1BWMz5pyKXSmxfVCP
 +0vItIUReHvAbu7w5gnuHyXlmbYSoBFpuNn2lEJW/QVonnPKQWy+MMiEV3L7x9vuDSfl
 pE3arqKLn8zjSF9UUyX1y57dhQ1e7vZ7gyyuc0KD8hGBKzR8zAKvakX2urUpA44UYikR uw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 36hgmacamp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 08 Feb 2021 15:12:31 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 118F9tnO153309;
 Mon, 8 Feb 2021 15:12:31 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 36j4pmeje9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 08 Feb 2021 15:12:31 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 118FCThL028875;
 Mon, 8 Feb 2021 15:12:29 GMT
Received: from [192.168.0.190] (/68.201.65.98)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 08 Feb 2021 07:12:29 -0800
From: Dave Kleikamp <dave.kleikamp@oracle.com>
To: Yang Li <yang.lee@linux.alibaba.com>
References: <1612686770-26163-1-git-send-email-yang.lee@linux.alibaba.com>
 <d8c873e6-d6f5-22b2-43ac-207fb7a1fd07@oracle.com>
Message-ID: <bc8a4bd6-110d-2ccf-709a-f230f018eca2@oracle.com>
Date: Mon, 8 Feb 2021 09:12:28 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <d8c873e6-d6f5-22b2-43ac-207fb7a1fd07@oracle.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9888
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0
 mlxlogscore=999 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102080104
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9888
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0
 suspectscore=0 mlxscore=0 clxscore=1015 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102080104
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 NICE_REPLY_A           Looks like a legit reply (A)
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l98Df-0004f7-VA
Subject: Re: [Jfs-discussion] [PATCH v2] jfs: turn diLog(),
 dataLog() and txLog() into void functions
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SSBqdXN0IHJlYWxpemVkIEkgbWFuZ2xlZCBzb21lIHdoaXRlc3BhY2UgdHJ5aW5nIHRvIG1haWwg
dGhpcyB0aHJvdWdoClRodW5kZXJiaXJkLiBJJ2xsIHJlcG9zdCBpdCB0aGUgcmlnaHQgd2F5LgoK
U2hhZ2d5CgpPbiAyLzgvMjEgOTowNSBBTSwgRGF2ZSBLbGVpa2FtcCB3cm90ZToKPiBPbiAyLzcv
MjEgMjozMiBBTSwgWWFuZyBMaSB3cm90ZToKPj4gVGhlc2UgZnVuY3Rpb25zIGFsd2F5cyByZXR1
cm4gJzAnIGFuZCBubyBjYWxsZXJzIHVzZSB0aGUgcmV0dXJuIHZhbHVlLgo+PiBTbyBtYWtlIGl0
IGEgdm9pZCBmdW5jdGlvbi4KPj4KPj4gVGhpcyBlbGltaW5hdGVzIHRoZSBmb2xsb3dpbmcgY29j
Y2ljaGVjayB3YXJuaW5nOgo+PiAuL2ZzL2pmcy9qZnNfdHhubWdyLmM6MTM2NTo1LTc6IFVubmVl
ZGVkIHZhcmlhYmxlOiAicmMiLiBSZXR1cm4gIjAiIG9uCj4+IGxpbmUgMTQxNAo+PiAuL2ZzL2pm
cy9qZnNfdHhubWdyLmM6MTQyMjo1LTc6IFVubmVlZGVkIHZhcmlhYmxlOiAicmMiLiBSZXR1cm4g
IjAiIG9uCj4+IGxpbmUgMTUyNwo+Pgo+PiBSZXBvcnRlZC1ieTogQWJhY2kgUm9ib3QgPGFiYWNp
QGxpbnV4LmFsaWJhYmEuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBZYW5nIExpIDx5YW5nLmxlZUBs
aW51eC5hbGliYWJhLmNvbT4KPj4gLS0tCj4+Cj4+IENoYW5nZXMgaW4gdjIKPj4gLXR1cm4gZnVu
Y3Rpb25zIGZvcndhcmQgcmVmZXJlbmNlcyB0byB2b2lkIHR5cGUuCj4+Cj4+IMKgIGZzL2pmcy9q
ZnNfdHhubWdyLmMgfCAzMiArKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQo+PiDCoCAx
IGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCj4gCj4gVGhp
cyBwYXRjaCBtaXNzZWQgZml4aW5nIGEgY2FsbCB0byB0eExvZygpIHdoaWNoIGRpZCBjaGVjayB0
aGUgcmV0dXJuIAo+IHZhbHVlLiBJIHRvb2sgdGhlIGxpYmVydHkgb2YgZml4aW5nIGl0IGhlcmUu
Cj4gCj4gCj4gamZzOiB0dXJuIGRpTG9nKCksIGRhdGFMb2coKSBhbmQgdHhMb2coKSBpbnRvIHZv
aWQgZnVuY3Rpb25zCj4gCj4gVGhlc2UgZnVuY3Rpb25zIGFsd2F5cyByZXR1cm4gJzAnIGFuZCBu
byBjYWxsZXJzIHVzZSB0aGUgcmV0dXJuIHZhbHVlLgo+IFNvIG1ha2UgaXQgYSB2b2lkIGZ1bmN0
aW9uLgo+IAo+IFRoaXMgZWxpbWluYXRlcyB0aGUgZm9sbG93aW5nIGNvY2NpY2hlY2sgd2Fybmlu
ZzoKPiAuL2ZzL2pmcy9qZnNfdHhubWdyLmM6MTM2NTo1LTc6IFVubmVlZGVkIHZhcmlhYmxlOiAi
cmMiLiBSZXR1cm4gIjAiIG9uCj4gbGluZSAxNDE0Cj4gLi9mcy9qZnMvamZzX3R4bm1nci5jOjE0
MjI6NS03OiBVbm5lZWRlZCB2YXJpYWJsZTogInJjIi4gUmV0dXJuICIwIiBvbgo+IGxpbmUgMTUy
Nwo+IAo+IFJlcG9ydGVkLWJ5OiBBYmFjaSBSb2JvdCA8YWJhY2lAbGludXguYWxpYmFiYS5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogWWFuZyBMaSA8eWFuZy5sZWVAbGludXguYWxpYmFiYS5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogRGF2ZSBLbGVpa2FtcCA8ZGF2ZS5rbGVpa2FtcEBvcmFjbGUuY29tPgo+
IC0tLQo+ICDCoGZzL2pmcy9qZnNfdHhubWdyLmMgfCAzNSArKysrKysrKysrKysrKysrLS0tLS0t
LS0tLS0tLS0tLS0tLQo+ICDCoDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxOSBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZnMvamZzL2pmc190eG5tZ3IuYyBiL2ZzL2pm
cy9qZnNfdHhubWdyLmMKPiBpbmRleCBkY2E4ZWRkMjM3OGMuLjA1MzI5NWNkN2JjNiAxMDA2NDQK
PiAtLS0gYS9mcy9qZnMvamZzX3R4bm1nci5jCj4gKysrIGIvZnMvamZzL2pmc190eG5tZ3IuYwo+
IEBAIC0xNDgsMTAgKzE0OCwxMCBAQCBzdGF0aWMgc3RydWN0IHsKPiAgwqAvKgo+ICDCoCAqIGZv
cndhcmQgcmVmZXJlbmNlcwo+ICDCoCAqLwo+IC1zdGF0aWMgaW50IGRpTG9nKHN0cnVjdCBqZnNf
bG9nICogbG9nLCBzdHJ1Y3QgdGJsb2NrICogdGJsaywgc3RydWN0IGxyZCAKPiAqIGxyZCwKPiAt
wqDCoMKgwqDCoMKgwqAgc3RydWN0IHRsb2NrICogdGxjaywgc3RydWN0IGNvbW1pdCAqIGNkKTsK
PiAtc3RhdGljIGludCBkYXRhTG9nKHN0cnVjdCBqZnNfbG9nICogbG9nLCBzdHJ1Y3QgdGJsb2Nr
ICogdGJsaywgc3RydWN0IAo+IGxyZCAqIGxyZCwKPiAtwqDCoMKgwqDCoMKgwqAgc3RydWN0IHRs
b2NrICogdGxjayk7Cj4gK3N0YXRpYyB2b2lkIGRpTG9nKHN0cnVjdCBqZnNfbG9nICpsb2csIHN0
cnVjdCB0YmxvY2sgKnRibGssIHN0cnVjdCBscmQgCj4gKmxyZCwKPiArwqDCoMKgwqDCoMKgwqAg
c3RydWN0IHRsb2NrICp0bGNrLCBzdHJ1Y3QgY29tbWl0ICpjZCk7Cj4gK3N0YXRpYyB2b2lkIGRh
dGFMb2coc3RydWN0IGpmc19sb2cgKmxvZywgc3RydWN0IHRibG9jayAqdGJsaywgc3RydWN0IAo+
IGxyZCAqbHJkLAo+ICvCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgdGxvY2sgKnRsY2spOwo+ICDCoHN0
YXRpYyB2b2lkIGR0TG9nKHN0cnVjdCBqZnNfbG9nICogbG9nLCBzdHJ1Y3QgdGJsb2NrICogdGJs
aywgc3RydWN0IAo+IGxyZCAqIGxyZCwKPiAgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgdGxvY2sg
KiB0bGNrKTsKPiAgwqBzdGF0aWMgdm9pZCBtYXBMb2coc3RydWN0IGpmc19sb2cgKiBsb2csIHN0
cnVjdCB0YmxvY2sgKiB0YmxrLCBzdHJ1Y3QgCj4gbHJkICogbHJkLAo+IEBAIC0xNTksOCArMTU5
LDggQEAgc3RhdGljIHZvaWQgbWFwTG9nKHN0cnVjdCBqZnNfbG9nICogbG9nLCBzdHJ1Y3QgCj4g
dGJsb2NrICogdGJsaywgc3RydWN0IGxyZCAqIGxyZCwKPiAgwqBzdGF0aWMgdm9pZCB0eEFsbG9j
UE1hcChzdHJ1Y3QgaW5vZGUgKmlwLCBzdHJ1Y3QgbWFwbG9jayAqIG1hcGxvY2ssCj4gIMKgwqDC
oMKgwqDCoMKgwqAgc3RydWN0IHRibG9jayAqIHRibGspOwo+ICDCoHN0YXRpYyB2b2lkIHR4Rm9y
Y2Uoc3RydWN0IHRibG9jayAqIHRibGspOwo+IC1zdGF0aWMgaW50IHR4TG9nKHN0cnVjdCBqZnNf
bG9nICogbG9nLCBzdHJ1Y3QgdGJsb2NrICogdGJsaywKPiAtwqDCoMKgwqDCoMKgwqAgc3RydWN0
IGNvbW1pdCAqIGNkKTsKPiArc3RhdGljIHZvaWQgdHhMb2coc3RydWN0IGpmc19sb2cgKmxvZywg
c3RydWN0IHRibG9jayAqdGJsaywKPiArwqDCoMKgwqDCoMKgwqAgc3RydWN0IGNvbW1pdCAqY2Qp
Owo+ICDCoHN0YXRpYyB2b2lkIHR4VXBkYXRlTWFwKHN0cnVjdCB0YmxvY2sgKiB0YmxrKTsKPiAg
wqBzdGF0aWMgdm9pZCB0eFJlbGVhc2Uoc3RydWN0IHRibG9jayAqIHRibGspOwo+ICDCoHN0YXRp
YyB2b2lkIHh0TG9nKHN0cnVjdCBqZnNfbG9nICogbG9nLCBzdHJ1Y3QgdGJsb2NrICogdGJsaywg
c3RydWN0IAo+IGxyZCAqIGxyZCwKPiBAQCAtMTI1Niw4ICsxMjU2LDcgQEAgaW50IHR4Q29tbWl0
KHRpZF90IHRpZCzCoMKgwqDCoMKgwqDCoCAvKiB0cmFuc2FjdGlvbiAKPiBpZGVudGlmaWVyICov
Cj4gIMKgwqDCoMKgwqAgKgo+ICDCoMKgwqDCoMKgICogdHhVcGRhdGVNYXAoKSByZXNldHMgWEFE
X05FVyBpbiBYQUQuCj4gIMKgwqDCoMKgwqAgKi8KPiAtwqDCoMKgIGlmICgocmMgPSB0eExvZyhs
b2csIHRibGssICZjZCkpKQo+IC3CoMKgwqDCoMKgwqDCoCBnb3RvIFRoZUVuZDsKPiArwqDCoMKg
IHR4TG9nKGxvZywgdGJsaywgJmNkKTsKPiAgwqDCoMKgwqDCoCAvKgo+ICDCoMKgwqDCoMKgICog
RW5zdXJlIHRoYXQgaW5vZGUgaXNuJ3QgcmV1c2VkIGJlZm9yZQo+IEBAIC0xMzY1LDkgKzEzNjQs
OCBAQCBpbnQgdHhDb21taXQodGlkX3QgdGlkLMKgwqDCoMKgwqDCoMKgIC8qIHRyYW5zYWN0aW9u
IAo+IGlkZW50aWZpZXIgKi8KPiAgwqAgKgo+ICDCoCAqIFJFVFVSTiA6Cj4gIMKgICovCj4gLXN0
YXRpYyBpbnQgdHhMb2coc3RydWN0IGpmc19sb2cgKiBsb2csIHN0cnVjdCB0YmxvY2sgKiB0Ymxr
LCBzdHJ1Y3QgCj4gY29tbWl0ICogY2QpCj4gK3N0YXRpYyB2b2lkIHR4TG9nKHN0cnVjdCBqZnNf
bG9nICpsb2csIHN0cnVjdCB0YmxvY2sgKnRibGssIHN0cnVjdCAKPiBjb21taXQgKmNkKQo+ICDC
oHsKPiAtwqDCoMKgIGludCByYyA9IDA7Cj4gIMKgwqDCoMKgIHN0cnVjdCBpbm9kZSAqaXA7Cj4g
IMKgwqDCoMKgIGxpZF90IGxpZDsKPiAgwqDCoMKgwqAgc3RydWN0IHRsb2NrICp0bGNrOwo+IEBA
IC0xNDE0LDcgKzE0MTIsNyBAQCBzdGF0aWMgaW50IHR4TG9nKHN0cnVjdCBqZnNfbG9nICogbG9n
LCBzdHJ1Y3QgCj4gdGJsb2NrICogdGJsaywgc3RydWN0IGNvbW1pdCAqIGNkKQo+ICDCoMKgwqDC
oMKgwqDCoMKgIH0KPiAgwqDCoMKgwqAgfQo+ICDCoC3CoMKgwqAgcmV0dXJuIHJjOwo+ICvCoMKg
wqAgcmV0dXJuOwo+ICDCoH0KPiAgwqAgLyoKPiBAQCAtMTQyMiwxMCArMTQyMCw5IEBAIHN0YXRp
YyBpbnQgdHhMb2coc3RydWN0IGpmc19sb2cgKiBsb2csIHN0cnVjdCAKPiB0YmxvY2sgKiB0Ymxr
LCBzdHJ1Y3QgY29tbWl0ICogY2QpCj4gIMKgICoKPiAgwqAgKiBmdW5jdGlvbjrCoMKgwqAgbG9n
IGlub2RlIHRsb2NrIGFuZCBmb3JtYXQgbWFwbG9jayB0byB1cGRhdGUgYm1hcDsKPiAgwqAgKi8K
PiAtc3RhdGljIGludCBkaUxvZyhzdHJ1Y3QgamZzX2xvZyAqIGxvZywgc3RydWN0IHRibG9jayAq
IHRibGssIHN0cnVjdCBscmQgCj4gKiBscmQsCj4gLcKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHRs
b2NrICogdGxjaywgc3RydWN0IGNvbW1pdCAqIGNkKQo+ICtzdGF0aWMgdm9pZCBkaUxvZyhzdHJ1
Y3QgamZzX2xvZyAqbG9nLCBzdHJ1Y3QgdGJsb2NrICp0YmxrLCBzdHJ1Y3QgbHJkIAo+ICpscmQs
Cj4gK8KgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHRsb2NrICp0bGNrLCBzdHJ1Y3QgY29tbWl0ICpj
ZCkKPiAgwqB7Cj4gLcKgwqDCoCBpbnQgcmMgPSAwOwo+ICDCoMKgwqDCoCBzdHJ1Y3QgbWV0YXBh
Z2UgKm1wOwo+ICDCoMKgwqDCoCBweGRfdCAqcHhkOwo+ICDCoMKgwqDCoCBzdHJ1Y3QgcHhkX2xv
Y2sgKnB4ZGxvY2s7Cj4gQEAgLTE1MjcsNyArMTUyNCw3IEBAIHN0YXRpYyBpbnQgZGlMb2coc3Ry
dWN0IGpmc19sb2cgKiBsb2csIHN0cnVjdCAKPiB0YmxvY2sgKiB0YmxrLCBzdHJ1Y3QgbHJkICog
bHJkLAo+ICDCoMKgwqDCoCB9Cj4gIMKgI2VuZGlmwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC8qIF9KRlNfV0lQICovCj4gIMKgLcKgwqDCoCByZXR1cm4gcmM7Cj4gK8KgwqDCoCByZXR1
cm47Cj4gIMKgfQo+ICDCoCAvKgo+IEBAIC0xNTM1LDggKzE1MzIsOCBAQCBzdGF0aWMgaW50IGRp
TG9nKHN0cnVjdCBqZnNfbG9nICogbG9nLCBzdHJ1Y3QgCj4gdGJsb2NrICogdGJsaywgc3RydWN0
IGxyZCAqIGxyZCwKPiAgwqAgKgo+ICDCoCAqIGZ1bmN0aW9uOsKgwqDCoCBsb2cgZGF0YSB0bG9j
awo+ICDCoCAqLwo+IC1zdGF0aWMgaW50IGRhdGFMb2coc3RydWN0IGpmc19sb2cgKiBsb2csIHN0
cnVjdCB0YmxvY2sgKiB0YmxrLCBzdHJ1Y3QgCj4gbHJkICogbHJkLAo+IC3CoMKgwqDCoMKgwqDC
oCBzdHJ1Y3QgdGxvY2sgKiB0bGNrKQo+ICtzdGF0aWMgdm9pZCBkYXRhTG9nKHN0cnVjdCBqZnNf
bG9nICpsb2csIHN0cnVjdCB0YmxvY2sgKnRibGssIHN0cnVjdCAKPiBscmQgKmxyZCwKPiArwqDC
oMKgwqDCoMKgwqAgc3RydWN0IHRsb2NrICp0bGNrKQo+ICDCoHsKPiAgwqDCoMKgwqAgc3RydWN0
IG1ldGFwYWdlICptcDsKPiAgwqDCoMKgwqAgcHhkX3QgKnB4ZDsKPiBAQCAtMTU2Miw3ICsxNTU5
LDcgQEAgc3RhdGljIGludCBkYXRhTG9nKHN0cnVjdCBqZnNfbG9nICogbG9nLCBzdHJ1Y3QgCj4g
dGJsb2NrICogdGJsaywgc3RydWN0IGxyZCAqIGxyZCwKPiAgwqDCoMKgwqDCoMKgwqDCoCBtZXRh
cGFnZV9ob21lb2sobXApOwo+ICDCoMKgwqDCoMKgwqDCoMKgIGRpc2NhcmRfbWV0YXBhZ2UobXAp
Owo+ICDCoMKgwqDCoMKgwqDCoMKgIHRsY2stPm1wID0gTlVMTDsKPiAtwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIDA7Cj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybjsKPiAgwqDCoMKgwqAgfQo+ICDCoMKg
wqDCoMKgIFBYRGFkZHJlc3MocHhkLCBtcC0+aW5kZXgpOwo+IEBAIC0xNTczLDcgKzE1NzAsNyBA
QCBzdGF0aWMgaW50IGRhdGFMb2coc3RydWN0IGpmc19sb2cgKiBsb2csIHN0cnVjdCAKPiB0Ymxv
Y2sgKiB0YmxrLCBzdHJ1Y3QgbHJkICogbHJkLAo+ICDCoMKgwqDCoCAvKiBtYXJrIHBhZ2UgYXMg
aG9tZXdhcmQgYm91bmQgKi8KPiAgwqDCoMKgwqAgdGxjay0+ZmxhZyB8PSB0bGNrV1JJVEVQQUdF
Owo+ICDCoC3CoMKgwqAgcmV0dXJuIDA7Cj4gK8KgwqDCoCByZXR1cm47Cj4gIMKgfQo+ICDCoCAv
KgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1k
aXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1
c3Npb24K
